.class public Lcom/oneplus/settings/security/OPApplicationSecuritySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPApplicationSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/security/OPApplicationSecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final CHANGE_TRUST_AGENT_SETTINGS:I = 0x7e

.field private static final KEY_ADVANCED_SECURITY:Ljava/lang/String; = "advanced_security"

.field private static final KEY_APP_NOTIFICATION:Ljava/lang/String; = "application_notification"

.field private static final KEY_APP_PERMISSTION:Ljava/lang/String; = "application_permisstion_category"

.field private static final KEY_APP_PERMISSTION_CONTROL:Ljava/lang/String; = "application_permisstion_control"

.field private static final KEY_APP_PERMISSTION_MANAGE:Ljava/lang/String; = "application_permisstion_manage"

.field private static final KEY_AUTO_APPLICATION:Ljava/lang/String; = "auto_application"

.field private static final KEY_CLEAN_BG_PREF:Ljava/lang/String; = "clean_background"

.field private static final KEY_CREDENTIALS_INSTALL:Ljava/lang/String; = "credentials_install"

.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_CREDENTIAL_STORAGE_TYPE:Ljava/lang/String; = "credential_storage_type"

.field private static final KEY_DEVICE_ADMIN_CATEGORY:Ljava/lang/String; = "device_admin_category"

.field private static final KEY_FINGERPRINT_SETTINGS:Ljava/lang/String; = "fingerprint_settings"

.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_MANAGE_TRUST_AGENTS:Ljava/lang/String; = "manage_trust_agents"

.field private static final KEY_OWNER_INFO_SETTINGS:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_POWER_INSTANTLY_LOCKS:Ljava/lang/String; = "power_button_instantly_locks"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "credentials_reset"

.field private static final KEY_SCREEN_PINNING:Ljava/lang/String; = "screen_pinning_settings"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_TRUST_AGENT:Ljava/lang/String; = "trust_agent"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final MY_USER_ID:I

.field private static final ONEPLUS_KEY_DEFAULT_APPLICATIONS_SETTINGS:Ljava/lang/String; = "onepluse_default_applications_setting"

.field private static final ONEPLUS_KEY_SECURITY_MANAGER_CATEGOTY:Ljava/lang/String; = "oneplus_secuty_manager_category"

.field private static final ONLY_ONE_TRUST_AGENT:Z = true

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "OPApplicationSecuritySettings"

.field private static final TRUST_AGENT_CLICK_INTENT:Ljava/lang/String; = "trust_agent_click_intent"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private appNotification:Landroid/preference/Preference;

.field private applicationPermisstionManage:Landroid/preference/Preference;

.field private autoApplication:Landroid/preference/Preference;

.field private cleanBackgroundPref:Landroid/preference/Preference;

.field private mCategory:Landroid/preference/PreferenceCategory;

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDefaultApplicationSetting:Landroid/preference/Preference;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Landroid/preference/Preference;

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppControl:Landroid/preference/SwitchPreference;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 136
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 143
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    .line 776
    new-instance v0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 779
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 86
    sget v0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 86
    invoke-static {p0, p1}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "x2"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 86
    invoke-static {p0, p1, p2}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V
    .locals 10
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v9, 0x0

    .line 354
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 355
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 357
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 358
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 359
    .local v0, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 361
    .local v5, "trustAgentPreference":Landroid/preference/Preference;
    const-string v6, "trust_agent"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 362
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 366
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 367
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 370
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 372
    iget-boolean v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    if-eqz v6, :cond_1

    .line 373
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 374
    const v6, 0x7f0c0d1d

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 357
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    :cond_1
    if-nez v2, :cond_0

    .line 376
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 377
    const v6, 0x7f0c0465

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 380
    .end local v0    # "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 232
    .local v3, "root":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 233
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 235
    :cond_0
    const v6, 0x7f080063

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->addPreferencesFromResource(I)V

    .line 236
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 238
    const v6, 0x7f080035

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->addPreferencesFromResource(I)V

    .line 240
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v8, "user"

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 241
    .local v5, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 244
    const-string v6, "device_admin_category"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 247
    .local v0, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v6, "oneplus_secuty_manager_category"

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 249
    .local v4, "sucurityManageCategory":Landroid/preference/PreferenceGroup;
    const-string v6, "onepluse_default_applications_setting"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mDefaultApplicationSetting:Landroid/preference/Preference;

    .line 251
    const-string v6, "toggle_install_applications"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 253
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 256
    iget-object v8, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    sget v6, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v8, v6}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 257
    const-string v6, "no_install_unknown_sources"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "no_install_apps"

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 259
    :cond_1
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 267
    :cond_2
    const-string v6, "application_permisstion_control"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppControl:Landroid/preference/SwitchPreference;

    .line 268
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppControl:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    const-string v6, "auto_application"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->autoApplication:Landroid/preference/Preference;

    .line 272
    const-string v6, "application_permisstion_manage"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->applicationPermisstionManage:Landroid/preference/Preference;

    .line 273
    const-string v6, "clean_background"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->cleanBackgroundPref:Landroid/preference/Preference;

    .line 274
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->isCleanBgFunctionSupported()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 275
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->cleanBackgroundPref:Landroid/preference/Preference;

    new-instance v7, Lcom/oneplus/settings/security/OPApplicationSecuritySettings$1;

    invoke-direct {v7, p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings$1;-><init>(Lcom/oneplus/settings/security/OPApplicationSecuritySettings;)V

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 295
    :cond_3
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppControl:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getAppControlEnable()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 297
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getAppControlEnable()Z

    move-result v6

    if-nez v6, :cond_6

    .line 299
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->autoApplication:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->applicationPermisstionManage:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->cleanBackgroundPref:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    :goto_1
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppControl:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 319
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v6, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_7

    .line 320
    sget-object v6, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 321
    .local v2, "pref":Landroid/preference/Preference;
    if-eqz v2, :cond_4

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 319
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1    # "i":I
    .end local v2    # "pref":Landroid/preference/Preference;
    :cond_5
    move v6, v7

    .line 256
    goto/16 :goto_0

    .line 305
    :cond_6
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->autoApplication:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 307
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->applicationPermisstionManage:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 308
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->cleanBackgroundPref:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 323
    .restart local v1    # "i":I
    :cond_7
    return-object v3
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 542
    iget-object v8, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 543
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 544
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 547
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 548
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 549
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 553
    .end local v4    # "timeout":J
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v0

    if-ne v8, v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    array-length v9, v7

    if-eq v8, v9, :cond_3

    .line 554
    :cond_2
    iget-object v9, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 556
    iget-object v9, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 558
    iget-object v8, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 559
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 560
    iget-object v8, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 567
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 568
    return-void

    .line 567
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    .line 421
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 422
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v8, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v9, 0x80

    invoke-virtual {p0, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 424
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v8, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 426
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p2, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_1

    move v0, v7

    .line 429
    .local v0, "disableTrustAgents":Z
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 430
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 431
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 432
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_2

    .line 430
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 426
    .end local v0    # "disableTrustAgents":Z
    .end local v2    # "i":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 433
    .restart local v0    # "disableTrustAgents":Z
    .restart local v2    # "i":I
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static {v3, p0}, Lcom/android/settings_ex/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 434
    invoke-static {p0, v3}, Lcom/android/settings_ex/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v6

    .line 436
    .local v6, "trustAgentComponentInfo":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v8, v6, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    invoke-static {v3}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, v6, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 440
    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p2, v10, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_3

    .line 442
    iput-boolean v7, v6, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    .line 444
    :cond_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    .end local v2    # "i":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "trustAgentComponentInfo":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_4
    return-object v5
.end method

.method private getAppControlEnable()Z
    .locals 2

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 939
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    return v1
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "resid":I
    sget v1, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    sget v1, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const v0, 0x7f080067

    .line 221
    :goto_0
    return v0

    .line 203
    :cond_0
    const v0, 0x7f080064

    goto :goto_0

    .line 206
    :cond_1
    sget v1, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 208
    :sswitch_0
    const v0, 0x7f08006a

    .line 209
    goto :goto_0

    .line 212
    :sswitch_1
    const v0, 0x7f08006c

    .line 213
    goto :goto_0

    .line 217
    :sswitch_2
    const v0, 0x7f080069

    goto :goto_0

    .line 206
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isCleanBgFunctionSupported()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 959
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.oneplus.security.action.cleanbackground"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 960
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "oem.op_intelligent_background_management.support"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 962
    const/4 v1, 0x1

    .line 964
    :cond_0
    return v1
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSimIccReady()Z
    .locals 5

    .prologue
    .line 385
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 386
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 389
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 390
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 391
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    const/4 v4, 0x1

    .line 397
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 404
    const/4 v1, 0x0

    .line 405
    .local v1, "simState":I
    iget-object v5, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 407
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 408
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 409
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 410
    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    .line 416
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;)V
    .locals 11
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v6, 0x0

    .line 327
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "fingerprint"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 329
    .local v3, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v7

    if-nez v7, :cond_0

    .line 330
    const-string v6, "OPApplicationSecuritySettings"

    const-string v7, "No fingerprint hardware detected!!"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_0
    return-void

    .line 333
    :cond_0
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 334
    .local v2, "fingerprintPreference":Landroid/preference/Preference;
    const-string v7, "fingerprint_settings"

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 335
    const v7, 0x7f0c03e7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 336
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v5

    .line 338
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 340
    .local v1, "fingerprintCount":I
    :goto_1
    if-lez v1, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f130001

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-virtual {v7, v8, v1, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 344
    const-class v6, Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "clazz":Ljava/lang/String;
    :goto_2
    const-string v6, "com.android.settings"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 350
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "fingerprintCount":I
    :cond_1
    move v1, v6

    .line 338
    goto :goto_1

    .line 346
    .restart local v1    # "fingerprintCount":I
    :cond_2
    const-class v6, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/String;
    goto :goto_2
.end method

.method private setAppControlEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 952
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 457
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 458
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 498
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 500
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 501
    iget-object v8, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 502
    iget-object v8, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 503
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 505
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 509
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->disableUnusableTimeouts(J)V

    .line 511
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 502
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 517
    .local v2, "currentTimeout":J
    iget-object v9, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 518
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 519
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 520
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 521
    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 522
    .local v6, "timeout":J
    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    .line 523
    move v0, v4

    .line 520
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 527
    .end local v6    # "timeout":J
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "trust_agent"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 528
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 529
    aget-object v9, v8, v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-nez v9, :cond_2

    .line 530
    iget-object v9, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0c03d4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 539
    :goto_1
    return-void

    .line 533
    :cond_2
    iget-object v9, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0c03d5

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 537
    :cond_3
    iget-object v9, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0c03d3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 468
    new-instance v0, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setIcon(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c078b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 475
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 770
    const v0, 0x7f0c0bd4

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 175
    const/16 v0, 0xf9

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 702
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 703
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 706
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 711
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 479
    iget-object v1, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 480
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 481
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 482
    iget-object v1, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 483
    iget-object v1, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 486
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 480
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 184
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 186
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 188
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 190
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 194
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 490
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 491
    iget-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 494
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 715
    const/4 v3, 0x1

    .line 716
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 717
    .local v1, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 718
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v6, "lock_after_timeout"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 719
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 721
    .local v5, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_lock_after_timeout"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 765
    .end local v5    # "timeout":I
    :cond_0
    :goto_1
    return v3

    .line 723
    .restart local v5    # "timeout":I
    :catch_0
    move-exception v0

    .line 724
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "OPApplicationSecuritySettings"

    const-string v7, "could not persist lockAfter timeout setting"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 727
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v6, "visiblepattern"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 728
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget v7, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_1

    .line 729
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v6, "power_button_instantly_locks"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 730
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_1

    .line 731
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v6, "show_password"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 732
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_password"

    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 734
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget v7, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto :goto_1

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    move v6, v7

    .line 732
    goto :goto_2

    .line 735
    :cond_5
    const-string v6, "toggle_install_applications"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 736
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 737
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 738
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->warnAppInstallation()V

    .line 740
    const/4 v3, 0x0

    goto :goto_1

    .line 742
    :cond_6
    invoke-direct {p0, v7}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_1

    .line 744
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    const-string v6, "application_permisstion_control"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 748
    .local v4, "root":Landroid/preference/PreferenceScreen;
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppControl:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 750
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->autoApplication:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 751
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->appNotification:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 752
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->applicationPermisstionManage:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 762
    :goto_3
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mToggleAppControl:Landroid/preference/SwitchPreference;

    invoke-virtual {v6}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    invoke-direct {p0, v6}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->setAppControlEnable(Z)V

    goto/16 :goto_1

    .line 756
    :cond_8
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->autoApplication:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 757
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->appNotification:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 758
    iget-object v6, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->applicationPermisstionManage:Landroid/preference/Preference;

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    .line 618
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 619
    .local v11, "key":Ljava/lang/String;
    const-string v0, "onepluse_default_applications_setting"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "zhuyang--ONEPLUS_KEY_DEFAULT_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.oneplus.security"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 632
    .local v9, "intents":Landroid/content/Intent;
    const-string v0, "com.oneplus.security.action.DEFAULT_APP_SETTING"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0, v9}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v9    # "intents":Landroid/content/Intent;
    :cond_0
    :goto_0
    move v0, v12

    .line 694
    :goto_1
    return v0

    .line 639
    :cond_1
    const-string v0, "auto_application"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 640
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "zhuyang--KEY_AUTO_APPLICATION"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.oneplus.security"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 651
    :try_start_1
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 652
    .restart local v9    # "intents":Landroid/content/Intent;
    const-string v0, "com.oneplus.security.action.AUTORUN"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    invoke-virtual {p0, v9}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v9    # "intents":Landroid/content/Intent;
    :cond_2
    :goto_2
    move v0, v12

    .line 658
    goto :goto_1

    .line 659
    :cond_3
    const-string v0, "application_permisstion_manage"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 660
    sget-boolean v10, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 663
    .local v10, "isCtaVersion":Z
    if-eqz v10, :cond_4

    :try_start_2
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.oneplus.security"

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 666
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.oneplus.security.action.OPPERMISSION"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    .local v8, "intent":Landroid/content/Intent;
    :goto_3
    invoke-virtual {p0, v8}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->startActivity(Landroid/content/Intent;)V

    .end local v8    # "intent":Landroid/content/Intent;
    :goto_4
    move v0, v12

    .line 675
    goto :goto_1

    .line 669
    :cond_4
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_3

    .line 676
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "isCtaVersion":Z
    :cond_5
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 677
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0c0428

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_6
    :goto_5
    move v0, v12

    .line 694
    goto :goto_1

    .line 679
    :cond_7
    const-string v0, "trust_agent"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 680
    new-instance v7, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 682
    .local v7, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 683
    const/16 v0, 0x7e

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    .line 685
    .local v6, "confirmationLaunched":Z
    if-nez v6, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    .line 687
    iget-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 688
    iput-object v5, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_5

    .line 692
    .end local v6    # "confirmationLaunched":Z
    .end local v7    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_1

    .line 673
    .restart local v10    # "isCtaVersion":Z
    :catch_0
    move-exception v0

    goto :goto_4

    .line 654
    .end local v10    # "isCtaVersion":Z
    :catch_1
    move-exception v0

    goto :goto_2

    .line 634
    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 580
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 584
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 606
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 572
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 573
    iget-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 574
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 576
    :cond_0
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 610
    iget-object v1, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 614
    :cond_0
    return-void

    .line 610
    :cond_1
    const v0, 0x7f0c03da

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/security/OPApplicationSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
