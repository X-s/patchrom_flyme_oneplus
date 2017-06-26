.class public Lcom/android/settings_ex/SecuritySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final CHANGE_TRUST_AGENT_SETTINGS:I = 0x7e

.field private static final KEY_ADVANCED_SECURITY:Ljava/lang/String; = "advanced_security"

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

.field private static final ONLY_ONE_TRUST_AGENT:Z = true

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SecuritySettings"

.field private static final TRUST_AGENT_CLICK_INTENT:Ljava/lang/String; = "trust_agent_click_intent"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Landroid/preference/Preference;

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 108
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

    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 115
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 717
    new-instance v0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 720
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "x2"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 72
    invoke-static {p0, p1, p2}, Lcom/android/settings_ex/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V
    .locals 10
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v9, 0x0

    .line 372
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 373
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/android/settings_ex/SecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 375
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 376
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 377
    .local v0, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 379
    .local v5, "trustAgentPreference":Landroid/preference/Preference;
    const-string v6, "trust_agent"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 380
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 381
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 383
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 384
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 385
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 386
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 388
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 390
    iget-boolean v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    if-eqz v6, :cond_1

    .line 391
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 392
    const v6, 0x7f0c0d1d

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 375
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 393
    :cond_1
    if-nez v2, :cond_0

    .line 394
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 395
    const v6, 0x7f0c0465

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 398
    .end local v0    # "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 24

    .prologue
    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 199
    .local v13, "root":Landroid/preference/PreferenceScreen;
    if-eqz v13, :cond_0

    .line 200
    invoke-virtual {v13}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 202
    :cond_0
    const v19, 0x7f080063

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v20}, Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v12

    .line 207
    .local v12, "resid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 210
    sget v19, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    if-nez v19, :cond_c

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/SecuritySettings;->mIsPrimary:Z

    .line 212
    const-string v19, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings_ex/SecuritySettings$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SecuritySettings$1;-><init>(Lcom/android/settings_ex/SecuritySettings;)V

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 223
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SecuritySettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 224
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 226
    const v19, 0x7f080065

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 234
    :cond_2
    :goto_1
    const-string v19, "security_category"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    .line 236
    .local v14, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v14, :cond_3

    .line 237
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/SecuritySettings;->maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;)V

    .line 238
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings_ex/SecuritySettings;->addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V

    .line 242
    :cond_3
    const-string v19, "lock_after_timeout"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/ListPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->setupLockAfterPreference()V

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 249
    :cond_4
    const-string v19, "visiblepattern"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    .line 252
    const-string v19, "power_button_instantly_locks"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 254
    const-string v19, "trust_agent"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 255
    .local v17, "trustAgentPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v19

    if-lez v19, :cond_5

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const v20, 0x7f0c077c

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    :cond_5
    const v19, 0x7f080068

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 267
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    .line 268
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "carrier_config"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 270
    .local v5, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 271
    .local v4, "b":Landroid/os/PersistableBundle;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SecuritySettings;->mIsPrimary:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->isSimIccReady()Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "hide_sim_lock_settings_bool"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 273
    :cond_6
    const-string v19, "sim_lock"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 278
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "lock_to_app_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    if-eqz v19, :cond_7

    .line 280
    const-string v19, "screen_pinning_settings"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0c0cd2

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    :cond_7
    const-string v19, "show_password"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 286
    const-string v19, "credentials_reset"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "user"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/UserManager;

    .line 290
    .local v18, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 291
    const-string v19, "no_config_credentials"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_10

    .line 292
    const-string v19, "credential_storage_type"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 294
    .local v6, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v19

    if-eqz v19, :cond_f

    const v15, 0x7f0c09fe

    .line 297
    .local v15, "storageSummaryRes":I
    :goto_3
    invoke-virtual {v6, v15}, Landroid/preference/Preference;->setSummary(I)V

    .line 307
    .end local v6    # "credentialStorageType":Landroid/preference/Preference;
    .end local v15    # "storageSummaryRes":I
    :goto_4
    const-string v19, "device_admin_category"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 309
    .local v8, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v19, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v20, v0

    sget v19, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v19

    if-nez v19, :cond_11

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 315
    const-string v19, "no_install_unknown_sources"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_8

    const-string v19, "no_install_apps"

    invoke-virtual/range {v18 .. v19}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 317
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 321
    :cond_9
    const-string v19, "advanced_security"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 323
    .local v3, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_a

    .line 324
    const-string v19, "manage_trust_agents"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 325
    .local v10, "manageAgents":Landroid/preference/Preference;
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v19, v0

    sget v20, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v19 .. v20}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v19

    if-nez v19, :cond_a

    .line 326
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 327
    const v19, 0x7f0c0465

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 334
    .end local v10    # "manageAgents":Landroid/preference/Preference;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v19

    const-class v20, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-virtual/range {v19 .. v22}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 337
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    sget-object v19, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_12

    .line 338
    sget-object v19, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v19, v19, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 339
    .local v11, "pref":Landroid/preference/Preference;
    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 337
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 210
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v4    # "b":Landroid/os/PersistableBundle;
    .end local v5    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v8    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v9    # "i":I
    .end local v11    # "pref":Landroid/preference/Preference;
    .end local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v16    # "tm":Landroid/telephony/TelephonyManager;
    .end local v17    # "trustAgentPreference":Landroid/preference/Preference;
    .end local v18    # "um":Landroid/os/UserManager;
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 229
    :cond_d
    const v19, 0x7f08006d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 276
    .restart local v4    # "b":Landroid/os/PersistableBundle;
    .restart local v5    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v14    # "securityCategory":Landroid/preference/PreferenceGroup;
    .restart local v16    # "tm":Landroid/telephony/TelephonyManager;
    .restart local v17    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_e
    const-string v19, "sim_lock"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->isSimReady()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 294
    .restart local v6    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v18    # "um":Landroid/os/UserManager;
    :cond_f
    const v15, 0x7f0c09ff

    goto/16 :goto_3

    .line 299
    .end local v6    # "credentialStorageType":Landroid/preference/Preference;
    :cond_10
    const-string v19, "credentials_management"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 301
    .local v7, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string v19, "credentials_reset"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    const-string v19, "credentials_install"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    const-string v19, "credential_storage_type"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 314
    .end local v7    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v8    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 341
    .restart local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .restart local v9    # "i":I
    :cond_12
    return-object v13
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 560
    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 561
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 562
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 565
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 566
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 567
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 571
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

    .line 572
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 574
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 576
    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 577
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 578
    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 585
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 586
    return-void

    .line 585
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

    .line 439
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v8, Lcom/android/settings_ex/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v9, 0x80

    invoke-virtual {p0, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 442
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v8, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 444
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p2, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_1

    move v0, v7

    .line 447
    .local v0, "disableTrustAgents":Z
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 448
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 449
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 450
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_2

    .line 448
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 444
    .end local v0    # "disableTrustAgents":Z
    .end local v2    # "i":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 451
    .restart local v0    # "disableTrustAgents":Z
    .restart local v2    # "i":I
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static {v3, p0}, Lcom/android/settings_ex/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 452
    invoke-static {p0, v3}, Lcom/android/settings_ex/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v6

    .line 454
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

    .line 458
    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p2, v10, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_3

    .line 460
    iput-boolean v7, v6, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    .line 462
    :cond_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    .end local v2    # "i":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "trustAgentComponentInfo":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_4
    return-object v5
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "resid":I
    sget v1, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 167
    sget v1, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const v0, 0x7f080067

    .line 188
    :goto_0
    return v0

    .line 170
    :cond_0
    const v0, 0x7f080064

    goto :goto_0

    .line 173
    :cond_1
    sget v1, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 175
    :sswitch_0
    const v0, 0x7f08006a

    .line 176
    goto :goto_0

    .line 179
    :sswitch_1
    const v0, 0x7f08006c

    .line 180
    goto :goto_0

    .line 184
    :sswitch_2
    const v0, 0x7f080069

    goto :goto_0

    .line 173
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

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

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
    .line 403
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 404
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 407
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 408
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

    .line 409
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 410
    const/4 v4, 0x1

    .line 415
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

    .line 422
    const/4 v1, 0x0

    .line 423
    .local v1, "simState":I
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 425
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 426
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

    .line 427
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 428
    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    .line 434
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

    .line 345
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "fingerprint"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 347
    .local v3, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v7

    if-nez v7, :cond_0

    .line 348
    const-string v6, "SecuritySettings"

    const-string v7, "No fingerprint hardware detected!!"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_0
    return-void

    .line 351
    :cond_0
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 352
    .local v2, "fingerprintPreference":Landroid/preference/Preference;
    const-string v7, "fingerprint_settings"

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 353
    const v7, 0x7f0c03e7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 354
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 355
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v5

    .line 356
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 358
    .local v1, "fingerprintCount":I
    :goto_1
    if-lez v1, :cond_2

    .line 359
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

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

    .line 362
    const-class v6, Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "clazz":Ljava/lang/String;
    :goto_2
    const-string v6, "com.android.settings"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 368
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "fingerprintCount":I
    :cond_1
    move v1, v6

    .line 356
    goto :goto_1

    .line 364
    .restart local v1    # "fingerprintCount":I
    :cond_2
    const-class v6, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/String;
    goto :goto_2
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 476
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 516
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 518
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 519
    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 520
    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 521
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 523
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 527
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/SecuritySettings;->disableUnusableTimeouts(J)V

    .line 529
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 520
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 535
    .local v2, "currentTimeout":J
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 536
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 537
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 538
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 539
    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 540
    .local v6, "timeout":J
    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    .line 541
    move v0, v4

    .line 538
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 545
    .end local v6    # "timeout":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "trust_agent"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 546
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 547
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

    .line 548
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0c03d4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings_ex/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 557
    :goto_1
    return-void

    .line 551
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

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

    invoke-virtual {p0, v10, v11}, Lcom/android/settings_ex/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 555
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0c03d3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings_ex/SecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 486
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c078b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 493
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 711
    const v0, 0x7f0c0bd4

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 663
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 664
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 497
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 498
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 499
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 500
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 504
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 498
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 151
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 153
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 155
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 157
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 161
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 508
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 509
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 512
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 676
    const/4 v3, 0x1

    .line 677
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 679
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v5, "lock_after_timeout"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 680
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 682
    .local v4, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_lock_after_timeout"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 706
    .end local v4    # "timeout":I
    :cond_0
    :goto_1
    return v3

    .line 684
    .restart local v4    # "timeout":I
    :catch_0
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SecuritySettings"

    const-string v6, "could not persist lockAfter timeout setting"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 688
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v5, "visiblepattern"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 689
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget v6, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_1

    .line 690
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v5, "power_button_instantly_locks"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 691
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget v7, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_1

    .line 692
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v5, "show_password"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 693
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "show_password"

    move-object v5, p2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_2
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 695
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget v6, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto :goto_1

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    move v5, v6

    .line 693
    goto :goto_2

    .line 696
    :cond_5
    const-string v5, "toggle_install_applications"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 697
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 698
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 699
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->warnAppInstallation()V

    .line 701
    const/4 v3, 0x0

    goto :goto_1

    .line 703
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/settings_ex/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    .line 636
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 637
    .local v8, "key":Ljava/lang/String;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    const-string v2, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f0c0428

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 655
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 640
    :cond_1
    const-string v0, "trust_agent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 641
    new-instance v7, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 643
    .local v7, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 644
    const/16 v0, 0x7e

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    .line 646
    .local v6, "confirmationLaunched":Z
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 649
    iput-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 653
    .end local v6    # "confirmationLaunched":Z
    .end local v7    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 598
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 602
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 604
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 605
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    sget v4, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    sget v4, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    .line 615
    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "show_password"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 619
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v1, :cond_3

    .line 620
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 623
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->updateOwnerInfo()V

    .line 624
    return-void

    :cond_4
    move v1, v3

    .line 615
    goto :goto_0

    :cond_5
    move v2, v3

    .line 620
    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 590
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 591
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 592
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 594
    :cond_0
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 628
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 632
    :cond_0
    return-void

    .line 628
    :cond_1
    const v0, 0x7f0c03da

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
