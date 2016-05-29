.class public Lcom/android/settings_ex/SimLockManageSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SimLockManageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SimLockManageSettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final CHANGE_TRUST_AGENT_SETTINGS:I = 0x7e

.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_IMPROVE_REQUEST:I = 0x7c

.field private static final CONFIRM_EXISTING_FOR_BIOMETRIC_WEAK_LIVELINESS_OFF:I = 0x7d

.field private static final KEY_ADVANCED_SECURITY:Ljava/lang/String; = "advanced_security"

.field private static final KEY_APP_OPS_SUMMARY:Ljava/lang/String; = "app_ops_summary"

.field private static final KEY_BIOMETRIC_WEAK_IMPROVE_MATCHING:Ljava/lang/String; = "biometric_weak_improve_matching"

.field private static final KEY_BIOMETRIC_WEAK_LIVELINESS:Ljava/lang/String; = "biometric_weak_liveliness"

.field private static final KEY_CREDENTIALS_INSTALL:Ljava/lang/String; = "credentials_install"

.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_CREDENTIAL_STORAGE_TYPE:Ljava/lang/String; = "credential_storage_type"

.field private static final KEY_DEVICE_ADMIN_CATEGORY:Ljava/lang/String; = "device_admin_category"

.field private static final KEY_LOCK_AFTER_TIMEOUT:Ljava/lang/String; = "lock_after_timeout"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_MANAGE_TRUST_AGENTS:Ljava/lang/String; = "manage_trust_agents"

.field private static final KEY_OWNER_INFO_SETTINGS:Ljava/lang/String; = "owner_info_settings"

.field private static final KEY_POWER_INSTANTLY_LOCKS:Ljava/lang/String; = "power_button_instantly_locks"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "credentials_reset"

.field private static final KEY_SCREEN_PINNING:Ljava/lang/String; = "screen_pinning_settings"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_SIM_LOCK_SETTINGS:Ljava/lang/String; = "sim_lock_settings"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_TRUST_AGENT:Ljava/lang/String; = "trust_agent"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final ONLY_ONE_TRUST_AGENT:Z = true

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "SecuritySettings"

.field private static final TRUST_AGENT_CLICK_INTENT:Ljava/lang/String; = "trust_agent_click_intent"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings_ex/SimLockManageSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 112
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lock_after_timeout"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lockenabled"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "visiblepattern"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "biometric_weak_liveliness"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "power_button_instantly_locks"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "show_password"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "toggle_install_applications"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/SimLockManageSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 725
    new-instance v0, Lcom/android/settings_ex/SimLockManageSettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings_ex/SimLockManageSettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings_ex/SimLockManageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 728
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/android/settings_ex/SimLockManageSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/android/settings_ex/SimLockManageSettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 32

    .prologue
    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 203
    .local v21, "root":Landroid/preference/PreferenceScreen;
    if-eqz v21, :cond_0

    .line 204
    invoke-virtual/range {v21 .. v21}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 206
    :cond_0
    const v27, 0x7f060054

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SimLockManageSettings;->addPreferencesFromResource(I)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v21

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/settings_ex/SimLockManageSettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v20

    .line 211
    .local v20, "resid":I
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SimLockManageSettings;->addPreferencesFromResource(I)V

    .line 214
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-nez v27, :cond_4

    const/16 v27, 0x1

    :goto_0
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/SimLockManageSettings;->mIsPrimary:Z

    .line 216
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mIsPrimary:Z

    move/from16 v27, v0

    if-nez v27, :cond_1

    .line 218
    const-string v27, "owner_info_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SimLockManageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 219
    .local v17, "ownerInfoPref":Landroid/preference/Preference;
    if-eqz v17, :cond_1

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v27

    if-eqz v27, :cond_5

    .line 221
    const v27, 0x7f09025d

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 228
    .end local v17    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mIsPrimary:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 229
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v27

    if-eqz v27, :cond_6

    .line 231
    const v27, 0x7f060057

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SimLockManageSettings;->addPreferencesFromResource(I)V

    .line 239
    :cond_2
    :goto_2
    const-string v27, "security_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/PreferenceGroup;

    .line 241
    .local v22, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v22, :cond_7

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    .line 243
    .local v11, "hasSecurity":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcom/android/settings_ex/SimLockManageSettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;

    move-result-object v5

    .line 245
    .local v5, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v27

    if-ge v12, v0, :cond_7

    .line 246
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 247
    .local v4, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v25, Landroid/preference/Preference;

    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 249
    .local v25, "trustAgentPreference":Landroid/preference/Preference;
    const-string v27, "trust_agent"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 250
    iget-object v0, v4, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, v4, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 254
    .local v14, "intent":Landroid/content/Intent;
    iget-object v0, v4, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 255
    const-string v27, "android.intent.action.MAIN"

    move-object/from16 v0, v27

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 258
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 259
    if-nez v11, :cond_3

    .line 260
    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 261
    const v27, 0x7f0902b6

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 245
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 214
    .end local v4    # "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v5    # "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    .end local v11    # "hasSecurity":Z
    .end local v12    # "i":I
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v22    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v25    # "trustAgentPreference":Landroid/preference/Preference;
    :cond_4
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 223
    .restart local v17    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_5
    const v27, 0x7f09025b

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 234
    .end local v17    # "ownerInfoPref":Landroid/preference/Preference;
    :cond_6
    const v27, 0x7f06005e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SimLockManageSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 267
    .restart local v22    # "securityCategory":Landroid/preference/PreferenceGroup;
    :cond_7
    const-string v27, "lock_after_timeout"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/ListPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->setupLockAfterPreference()V

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->updateLockAfterPreferenceSummary()V

    .line 274
    :cond_8
    const-string v27, "biometric_weak_liveliness"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SimLockManageSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    .line 278
    const-string v27, "visiblepattern"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SimLockManageSettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    .line 281
    const-string v27, "power_button_instantly_locks"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SimLockManageSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    .line 283
    const-string v27, "trust_agent"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    .line 284
    .restart local v25    # "trustAgentPreference":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    if-eqz v25, :cond_9

    invoke-virtual/range {v25 .. v25}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/CharSequence;->length()I

    move-result v27

    if-lez v27, :cond_9

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0905df

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v31

    aput-object v31, v29, v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SimLockManageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    :cond_9
    const v27, 0x7f060055

    move/from16 v0, v20

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v27

    const/high16 v28, 0x10000

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_a

    .line 296
    if-eqz v22, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mVisiblePattern:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    .line 297
    const-string v27, "visiblepattern"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    :cond_a
    const v27, 0x7f060059

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SimLockManageSettings;->addPreferencesFromResource(I)V

    .line 304
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v24

    .line 305
    .local v24, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v16

    .line 306
    .local v16, "numPhones":I
    const/4 v10, 0x1

    .line 307
    .local v10, "disableLock":Z
    const/16 v19, 0x1

    .line 308
    .local v19, "removeLock":Z
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v12, v0, :cond_c

    .line 310
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v27

    if-eqz v27, :cond_b

    .line 312
    const/16 v19, 0x0

    .line 313
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_b

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v27

    if-eqz v27, :cond_b

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_b

    .line 316
    const/4 v10, 0x0

    .line 308
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 320
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mIsPrimary:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    if-eqz v19, :cond_16

    .line 321
    :cond_d
    const-string v27, "sim_lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "lock_to_app_enabled"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_f

    .line 329
    const-string v27, "screen_pinning_settings"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f090afc

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 334
    :cond_f
    const-string v27, "show_password"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SimLockManageSettings;->mShowPassword:Landroid/preference/SwitchPreference;

    .line 335
    const-string v27, "credentials_reset"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SimLockManageSettings;->mResetCredentials:Landroid/preference/Preference;

    .line 337
    const-string v27, "sim_lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    if-eqz v27, :cond_10

    .line 339
    const-string v27, "sim_lock_settings"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 341
    .local v13, "iccLock":Landroid/preference/Preference;
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 342
    .restart local v14    # "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_17

    .line 343
    const-string v27, "com.android.settings_ex"

    const-string v28, "com.android.settings_ex.SelectSubscription"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v27, "PACKAGE"

    const-string v28, "com.android.settings_ex"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v27, "TARGET_CLASS"

    const-string v28, "com.android.settings_ex.IccLockSettings"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    :goto_6
    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 355
    .end local v13    # "iccLock":Landroid/preference/Preference;
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const-string v28, "user"

    invoke-virtual/range {v27 .. v28}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/UserManager;

    .line 356
    .local v26, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SimLockManageSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 357
    const-string v27, "no_config_credentials"

    invoke-virtual/range {v26 .. v27}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_19

    .line 358
    const-string v27, "credential_storage_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 360
    .local v7, "credentialStorageType":Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v27

    if-eqz v27, :cond_18

    const v23, 0x7f090857

    .line 363
    .local v23, "storageSummaryRes":I
    :goto_7
    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 373
    .end local v7    # "credentialStorageType":Landroid/preference/Preference;
    .end local v23    # "storageSummaryRes":I
    :goto_8
    const-string v27, "device_admin_category"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceGroup;

    .line 375
    .local v9, "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    const-string v27, "toggle_install_applications"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SimLockManageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    check-cast v27, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SimLockManageSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->isNonMarketAppsAllowed()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mIsPrimary:Z

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 380
    const-string v27, "no_install_unknown_sources"

    invoke-virtual/range {v26 .. v27}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_11

    const-string v27, "no_install_apps"

    invoke-virtual/range {v26 .. v27}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_12

    .line 382
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 386
    :cond_12
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v27

    if-nez v27, :cond_13

    .line 387
    const-string v27, "app_ops_summary"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SimLockManageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 388
    .local v6, "appOpsSummary":Landroid/preference/Preference;
    if-eqz v9, :cond_13

    .line 389
    invoke-virtual {v9, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 394
    .end local v6    # "appOpsSummary":Landroid/preference/Preference;
    :cond_13
    const-string v27, "advanced_security"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 396
    .local v3, "advancedCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_14

    .line 397
    const-string v27, "manage_trust_agents"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 398
    .local v15, "manageAgents":Landroid/preference/Preference;
    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SimLockManageSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v27

    if-nez v27, :cond_14

    .line 399
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 400
    const v27, 0x7f0902b6

    move/from16 v0, v27

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 407
    .end local v15    # "manageAgents":Landroid/preference/Preference;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SimLockManageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v27

    const-class v28, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x1

    const/16 v30, 0x1

    invoke-virtual/range {v27 .. v30}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 410
    const/4 v12, 0x0

    :goto_9
    sget-object v27, Lcom/android/settings_ex/SimLockManageSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v12, v0, :cond_1a

    .line 411
    sget-object v27, Lcom/android/settings_ex/SimLockManageSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v27, v27, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SimLockManageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 412
    .local v18, "pref":Landroid/preference/Preference;
    if-eqz v18, :cond_15

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 410
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 323
    .end local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .end local v9    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    .end local v18    # "pref":Landroid/preference/Preference;
    .end local v26    # "um":Landroid/os/UserManager;
    :cond_16
    if-eqz v10, :cond_e

    .line 324
    const-string v27, "sim_lock"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 349
    .restart local v13    # "iccLock":Landroid/preference/Preference;
    .restart local v14    # "intent":Landroid/content/Intent;
    :cond_17
    const-string v27, "com.android.settings_ex"

    const-string v28, "com.android.settings_ex.IccLockSettings"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6

    .line 360
    .end local v13    # "iccLock":Landroid/preference/Preference;
    .end local v14    # "intent":Landroid/content/Intent;
    .restart local v7    # "credentialStorageType":Landroid/preference/Preference;
    .restart local v26    # "um":Landroid/os/UserManager;
    :cond_18
    const v23, 0x7f090858

    goto/16 :goto_7

    .line 365
    .end local v7    # "credentialStorageType":Landroid/preference/Preference;
    :cond_19
    const-string v27, "credentials_management"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceGroup;

    .line 367
    .local v8, "credentialsManager":Landroid/preference/PreferenceGroup;
    const-string v27, "credentials_reset"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    const-string v27, "credentials_install"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 369
    const-string v27, "credential_storage_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8

    .line 414
    .end local v8    # "credentialsManager":Landroid/preference/PreferenceGroup;
    .restart local v3    # "advancedCategory":Landroid/preference/PreferenceGroup;
    .restart local v9    # "deviceAdminCategory":Landroid/preference/PreferenceGroup;
    :cond_1a
    return-object v21
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 527
    iget-object v8, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 528
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 529
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 532
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 533
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 534
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 538
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

    .line 539
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 541
    iget-object v9, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 543
    iget-object v8, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 544
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 545
    iget-object v8, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 552
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 553
    return-void

    .line 552
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v6, Lcom/android/settings_ex/SimLockManageSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v7, 0x80

    invoke-virtual {p0, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 422
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents()Ljava/util/List;

    move-result-object v0

    .line 423
    .local v0, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 424
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 425
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 426
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    .line 424
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_1
    invoke-static {v2, p0}, Lcom/android/settings_ex/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    invoke-static {p0, v2}, Lcom/android/settings_ex/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v5

    .line 430
    .local v5, "trustAgentComponentInfo":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v6, v5, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v6, :cond_0

    invoke-static {v2}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 434
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v1    # "i":I
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "trustAgentComponentInfo":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_2
    return-object v4
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v2, 0x1

    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "resid":I
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_2

    .line 164
    const-string v4, "user"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 165
    .local v0, "mUm":Landroid/os/UserManager;
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 166
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 168
    .local v2, "singleUser":Z
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 169
    const v1, 0x7f060058

    .line 192
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_1
    return v1

    .line 166
    .restart local v0    # "mUm":Landroid/os/UserManager;
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 171
    .restart local v2    # "singleUser":Z
    :cond_1
    const v1, 0x7f060056

    goto :goto_1

    .line 173
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 175
    const v1, 0x7f060055

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 179
    :sswitch_0
    const v1, 0x7f06005b

    .line 180
    goto :goto_1

    .line 183
    :sswitch_1
    const v1, 0x7f06005d

    .line 184
    goto :goto_1

    .line 188
    :sswitch_2
    const v1, 0x7f06005a

    goto :goto_1

    .line 177
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

    .line 442
    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 448
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 488
    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 490
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 491
    iget-object v8, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 492
    iget-object v8, p0, Lcom/android/settings_ex/SimLockManageSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings_ex/SimLockManageSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 493
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 495
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 499
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ex/SimLockManageSettings;->disableUnusableTimeouts(J)V

    .line 501
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 492
    goto :goto_0
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 507
    .local v2, "currentTimeout":J
    iget-object v9, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 508
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 509
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 510
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 511
    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 512
    .local v6, "timeout":J
    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    .line 513
    move v0, v4

    .line 510
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 517
    .end local v6    # "timeout":J
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "trust_agent"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 518
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 519
    iget-object v9, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f090253

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings_ex/SimLockManageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 524
    :goto_1
    return-void

    .line 522
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f090252

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings_ex/SimLockManageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 458
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090541

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905ef

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

    iput-object v0, p0, Lcom/android/settings_ex/SimLockManageSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 465
    return-void
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 713
    const v0, 0x7f090a27

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    .line 632
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 633
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    .line 635
    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->startBiometricWeakImprove()V

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_2

    if-ne p2, v2, :cond_2

    .line 639
    iget-object v1, p0, Lcom/android/settings_ex/SimLockManageSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    .line 640
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_0

    .line 645
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    if-ne p2, v2, :cond_3

    .line 646
    iget-object v1, p0, Lcom/android/settings_ex/SimLockManageSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/android/settings_ex/SimLockManageSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SimLockManageSettings;->startActivity(Landroid/content/Intent;)V

    .line 648
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/SimLockManageSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 652
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/SimLockManageSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/settings_ex/SimLockManageSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 470
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 471
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SimLockManageSettings;->setNonMarketAppsAllowed(Z)V

    .line 472
    iget-object v1, p0, Lcom/android/settings_ex/SimLockManageSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/settings_ex/SimLockManageSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 476
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 470
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 147
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SimLockManageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/SimLockManageSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 149
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SimLockManageSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 151
    if-eqz p1, :cond_0

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings_ex/SimLockManageSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 156
    :cond_0
    const v0, 0x7f06005f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SimLockManageSettings;->addPreferencesFromResource(I)V

    .line 157
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 480
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 481
    iget-object v0, p0, Lcom/android/settings_ex/SimLockManageSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/settings_ex/SimLockManageSettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 484
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 657
    const/4 v4, 0x1

    .line 658
    .local v4, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 659
    .local v2, "key":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/SimLockManageSettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    .line 660
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v8, "lock_after_timeout"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 661
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 663
    .local v5, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_screen_lock_after_timeout"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/SimLockManageSettings;->updateLockAfterPreferenceSummary()V

    .line 708
    .end local v5    # "timeout":I
    :cond_0
    :goto_1
    return v4

    .line 665
    .restart local v5    # "timeout":I
    :catch_0
    move-exception v0

    .line 666
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "SecuritySettings"

    const-string v7, "could not persist lockAfter timeout setting"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 669
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v8, "lockenabled"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 670
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_1

    .line 671
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v8, "visiblepattern"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 672
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_1

    .line 673
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v8, "biometric_weak_liveliness"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 674
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 675
    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    goto :goto_1

    .line 680
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/SimLockManageSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v8, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 681
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 683
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/16 v6, 0x7d

    invoke-virtual {v1, v6, v9, v9}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 689
    invoke-virtual {v3, v7}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricWeakLivelinessEnabled(Z)V

    .line 690
    iget-object v6, p0, Lcom/android/settings_ex/SimLockManageSettings;->mBiometricWeakLiveliness:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 693
    .end local v1    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    const-string v8, "power_button_instantly_locks"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 694
    iget-object v6, p0, Lcom/android/settings_ex/SimLockManageSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(Z)V

    goto :goto_1

    .line 695
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string v8, "show_password"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 696
    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "show_password"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_7

    :goto_2
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_7
    move v6, v7

    goto :goto_2

    .line 698
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string v6, "toggle_install_applications"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 699
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 700
    iget-object v6, p0, Lcom/android/settings_ex/SimLockManageSettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 701
    invoke-direct {p0}, Lcom/android/settings_ex/SimLockManageSettings;->warnAppInstallation()V

    .line 703
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 705
    :cond_9
    invoke-direct {p0, v7}, Lcom/android/settings_ex/SimLockManageSettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    .line 595
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 596
    .local v7, "key":Ljava/lang/String;
    const-string v0, "unlock_set_or_change"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    const-string v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f09027c

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SimLockManageSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 624
    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 599
    :cond_1
    const-string v0, "biometric_weak_improve_matching"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    new-instance v6, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 602
    .local v6, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/16 v0, 0x7c

    invoke-virtual {v6, v0, v5, v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->startBiometricWeakImprove()V

    goto :goto_0

    .line 610
    .end local v6    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_2
    const-string v0, "trust_agent"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 611
    new-instance v6, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SimLockManageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 613
    .restart local v6    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SimLockManageSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 614
    const/16 v0, 0x7e

    invoke-virtual {v6, v0, v5, v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SimLockManageSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/settings_ex/SimLockManageSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SimLockManageSettings;->startActivity(Landroid/content/Intent;)V

    .line 618
    iput-object v5, p0, Lcom/android/settings_ex/SimLockManageSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto :goto_0

    .line 622
    .end local v6    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 565
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 591
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 557
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 558
    iget-object v0, p0, Lcom/android/settings_ex/SimLockManageSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings_ex/SimLockManageSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 561
    :cond_0
    return-void
.end method

.method public startBiometricWeakImprove()V
    .locals 3

    .prologue
    .line 717
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 718
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.AddToSetup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SimLockManageSettings;->startActivity(Landroid/content/Intent;)V

    .line 720
    return-void
.end method
