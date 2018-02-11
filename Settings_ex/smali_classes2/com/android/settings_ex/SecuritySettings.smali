.class public Lcom/android/settings_ex/SecuritySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings_ex/search/Indexable;
.implements Lcom/android/settings_ex/GearPreference$OnGearClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;,
        Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;,
        Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;,
        Lcom/android/settings_ex/SecuritySettings$UnificationConfirmationDialog;
    }
.end annotation


# static fields
.field private static final ADD_FINGERPRINT_REQUEST:I = 0x67

.field private static final CHANGE_TRUST_AGENT_SETTINGS:I = 0x7e

.field private static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x66

.field private static final CONFIRM_REQUEST:I = 0x65

.field private static final GOTO_APPLOCKER_PAGE_REQUEST:I = 0x68

.field private static final GOTO_EDIT_FINGERPRINT_REQUEST:I = 0x69

.field private static final GOTO_QUICKPAY_PAGE_REQUEST:I = 0x6a

.field private static final KEY_ADVANCED_SECURITY:Ljava/lang/String; = "advanced_security"

.field private static final KEY_APP_LOCKER:Ljava/lang/String; = "oneplus_app_locker"

.field private static final KEY_CREDENTIALS_INSTALL:Ljava/lang/String; = "credentials_install"

.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_CREDENTIAL_STORAGE_TYPE:Ljava/lang/String; = "credential_storage_type"

.field private static final KEY_DEVICE_ADMIN_CATEGORY:Ljava/lang/String; = "device_admin_category"

.field private static final KEY_FINGERPRINT_ADD:Ljava/lang/String; = "key_fingerprint_add"

.field private static final KEY_FINGERPRINT_ITEM_PREFIX:Ljava/lang/String; = "key_fingerprint_item"

.field private static final KEY_MANAGE_TRUST_AGENTS:Ljava/lang/String; = "manage_trust_agents"

.field private static final KEY_ONEPLUS_CATAGORY_QUICK_PAY:Ljava/lang/String; = "privacy_catagory_quick_pay"

.field private static final KEY_ONEPLUS_QUICK_PAY:Ljava/lang/String; = "oneplus_quick_pay"

.field private static final KEY_PREFERENCE_DIVIDER_LINE_APPLOCKER:Ljava/lang/String; = "preference_divider_line_applocker"

.field private static final KEY_PREFERENCE_DIVIDER_LINE_QUICK_PAY:Ljava/lang/String; = "preference_divider_line_quick_pay"

.field private static final KEY_PRIVACY_CATAGORY:Ljava/lang/String; = "privacy_catagory"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "credentials_reset"

.field private static final KEY_SCREEN_PINNING:Ljava/lang/String; = "screen_pinning_settings"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SHOW_PASSWORD:Ljava/lang/String; = "show_password"

.field private static final KEY_SIMLOCK_PREFERENCE_DIVIDER_LINE:Ljava/lang/String; = "simlock_preference_divider_line"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_TRUST_AGENT:Ljava/lang/String; = "trust_agent"

.field private static final KEY_UNIFICATION:Ljava/lang/String; = "unification"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_UNLOCK_SET_OR_CHANGE_PROFILE:Ljava/lang/String; = "unlock_set_or_change_profile"

.field private static final KEY_USER_CREDENTIALS:Ljava/lang/String; = "user_credentials"

.field private static final KEY_VISIBLE_PATTERN_PROFILE:Ljava/lang/String; = "visiblepattern_profile"

.field private static final MY_USER_ID:I

.field private static final ONLY_ONE_TRUST_AGENT:Z = true

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST_PROFILE:I = 0x7f

.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SecuritySettings"

.field private static final TAG_UNIFICATION_DIALOG:Ljava/lang/String; = "unification_dialog"

.field private static final TRUST_AGENT_CLICK_INTENT:Ljava/lang/String; = "trust_agent_click_intent"

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static final UNIFY_LOCK_CONFIRM_DEVICE_REQUEST:I = 0x80

.field private static final UNIFY_LOCK_CONFIRM_PROFILE_REQUEST:I = 0x81

.field private static final UNUNIFY_LOCK_CONFIRM_DEVICE_REQUEST:I = 0x82


# instance fields
.field private isSupportFinger:Z

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private mFingerprintEditPreference:Landroid/support/v7/preference/Preference;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprint_list_category:Landroid/support/v7/preference/PreferenceCategory;

.field public mGotoAppLockerClick:Z

.field public mGotoEditFingerprintClick:Z

.field public mGotoEnrollClick:Z

.field public mGotoQuickPayClick:Z

.field private mHasFingerprint:Z

.field private mIsAdmin:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLaunchedConfirm:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

.field private mProfileChallengeUserId:I

.field private mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mQuickPayPreference:Landroid/support/v7/preference/Preference;

.field private mResetCredentials:Lcom/android/settings_exlib/RestrictedPreference;

.field private mShowPassword:Landroid/support/v14/preference/SwitchPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mToken:[B

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

.field private mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;

.field private preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings_ex/ManagedLockPasswordProvider;
    .param p3, "userId"    # I

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/settings_ex/SecuritySettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->launchConfirmDeviceLockForUnification()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->unifyUncompliantLocks()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/SecuritySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->updateUnificationPreference()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 144
    const-string/jumbo v1, "show_password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_install_applications"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "unification"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "visiblepattern_profile"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 143
    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 151
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 999
    new-instance v0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;-><init>(Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;)V

    .line 998
    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 99
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 202
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mHasFingerprint:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEditFingerprintClick:Z

    .line 204
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    .line 205
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    .line 208
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->isSupportFinger:Z

    .line 99
    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "root"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    const/4 v7, 0x0

    .line 1430
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprint_list_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1431
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v6, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    .line 1432
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1434
    .local v0, "fingerprintCount":I
    if-lez v0, :cond_0

    .line 1435
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings;->mHasFingerprint:Z

    .line 1440
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1441
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 1442
    .local v2, "item":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v4, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;-><init>(Landroid/content/Context;)V

    .line 1443
    .local v4, "pref":Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings_ex/SecuritySettings;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1445
    invoke-virtual {v4, v2}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 1446
    invoke-virtual {v4, v7}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->setPersistent(Z)V

    .line 1447
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprint_list_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1448
    invoke-virtual {v4, p0}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1437
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v4    # "pref":Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;
    :cond_0
    iput-boolean v7, p0, Lcom/android/settings_ex/SecuritySettings;->mHasFingerprint:Z

    goto :goto_0

    .line 1456
    .restart local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->updateAddPreference()V

    .line 1429
    return-void
.end method

.method private addTrustAgentSettings(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 9
    .param p1, "securityCategory"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 545
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 547
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/android/settings_ex/SecuritySettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 548
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 549
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 551
    .local v0, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v5, Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 552
    .local v5, "trustAgentPreference":Lcom/android/settings_exlib/RestrictedPreference;
    const-string/jumbo v6, "trust_agent"

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 553
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 556
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 557
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 558
    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    invoke-virtual {v5, v4}, Lcom/android/settings_exlib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    .line 561
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 563
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 564
    invoke-virtual {v5}, Lcom/android/settings_exlib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v2, :cond_1

    .line 548
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 565
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    .line 566
    const v6, 0x7f0e06ae

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setSummary(I)V

    goto :goto_1

    .line 544
    .end local v0    # "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "trustAgentPreference":Lcom/android/settings_exlib/RestrictedPreference;
    :cond_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 25

    .prologue
    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v15

    .line 296
    .local v15, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v15, :cond_0

    .line 297
    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 299
    :cond_0
    const v21, 0x7f080070

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v15

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    move-object/from16 v23, v0

    sget v24, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 303
    invoke-static/range {v21 .. v24}, Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;I)I

    move-result v14

    .line 305
    .local v14, "resid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 308
    const-string/jumbo v21, "unlock_set_or_change"

    sget v22, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    sget v22, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-static/range {v21 .. v22}, Lcom/android/settings_ex/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v21, v0

    const/16 v22, -0x2710

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v21

    .line 311
    if-eqz v21, :cond_1

    .line 313
    const v21, 0x7f080082

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 314
    const v21, 0x7f080085

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    move-object/from16 v23, v0

    .line 317
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v24, v0

    .line 315
    invoke-static/range {v21 .. v24}, Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;I)I

    move-result v13

    .line 318
    .local v13, "profileResid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/android/settings_ex/SecuritySettings;->maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v21

    if-nez v21, :cond_b

    .line 326
    const-string/jumbo v21, "unlock_set_or_change_profile"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 327
    .local v8, "lockPreference":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 328
    const v22, 0x7f0e09ee

    .line 327
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 329
    .local v17, "summary":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 330
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 333
    const-string/jumbo v21, "unlock_set_or_change"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    .line 342
    .end local v8    # "lockPreference":Landroid/support/v7/preference/Preference;
    .end local v13    # "profileResid":I
    .end local v17    # "summary":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string/jumbo v21, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v20

    .line 343
    .local v20, "unlockSetOrChange":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/settings_ex/GearPreference;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 344
    check-cast v20, Lcom/android/settings_ex/GearPreference;

    .end local v20    # "unlockSetOrChange":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/GearPreference;->setOnGearClickListener(Lcom/android/settings_ex/GearPreference$OnGearClickListener;)V

    .line 348
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/SecuritySettings;->mIsAdmin:Z

    .line 352
    const-string/jumbo v21, "security_category"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    .line 351
    check-cast v16, Landroid/support/v7/preference/PreferenceGroup;

    .line 353
    .local v16, "securityCategory":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v16, :cond_3

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addTrustAgentSettings(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 360
    :cond_3
    const-string/jumbo v21, "visiblepattern_profile"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/support/v14/preference/SwitchPreference;

    .line 359
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    .line 361
    const-string/jumbo v21, "unification"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    .line 363
    const v21, 0x7f080047

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 365
    const-string/jumbo v21, "key_fingerprint_list"

    .line 364
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mFingerprint_list_category:Landroid/support/v7/preference/PreferenceCategory;

    .line 366
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/SecuritySettings;->addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 370
    const v21, 0x7f080077

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 372
    const-string/jumbo v21, "privacy_catagory_quick_pay"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 373
    const-string/jumbo v21, "oneplus_quick_pay"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mQuickPayPreference:Landroid/support/v7/preference/Preference;

    .line 374
    sget-object v21, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static/range {v21 .. v21}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mQuickPayPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v21, v0

    const v22, 0x7f0e040a

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 379
    :goto_1
    const-string/jumbo v21, "preference_divider_line_quick_pay"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 389
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    .line 391
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const-string/jumbo v22, "carrier_config"

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 390
    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 392
    .local v5, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 393
    .local v4, "b":Landroid/os/PersistableBundle;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SecuritySettings;->mIsAdmin:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->isSimIccReady()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 394
    const-string/jumbo v21, "hide_sim_lock_settings_bool"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 393
    if-eqz v21, :cond_e

    .line 395
    :cond_4
    const-string/jumbo v21, "sim_lock"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 397
    const-string/jumbo v21, "simlock_preference_divider_line"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 403
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 404
    const-string/jumbo v22, "lock_to_app_enabled"

    const/16 v23, 0x0

    .line 403
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_5

    .line 405
    const-string/jumbo v21, "screen_pinning_settings"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0ee6

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 405
    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 410
    :cond_5
    const-string/jumbo v21, "show_password"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    .line 411
    const-string/jumbo v21, "credentials_reset"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/settings_exlib/RestrictedPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Lcom/android/settings_exlib/RestrictedPreference;

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const-string/jumbo v22, "user"

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 415
    .local v19, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 450
    const-string/jumbo v21, "device_admin_category"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 449
    check-cast v6, Landroid/support/v7/preference/PreferenceGroup;

    .line 452
    .local v6, "deviceAdminCategory":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v21, "toggle_install_applications"

    .line 451
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v22, v0

    sget v21, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v21

    if-eqz v21, :cond_f

    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    .line 458
    const-string/jumbo v22, "no_install_unknown_sources"

    sget v23, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 457
    invoke-static/range {v21 .. v23}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_6

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    .line 460
    const-string/jumbo v22, "no_install_apps"

    sget v23, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 459
    invoke-static/range {v21 .. v23}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v21

    .line 457
    if-eqz v21, :cond_7

    .line 461
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 463
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    .line 465
    const-string/jumbo v22, "no_install_unknown_sources"

    .line 464
    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v21

    if-nez v21, :cond_8

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    .line 468
    const-string/jumbo v22, "no_install_apps"

    .line 467
    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 474
    :cond_8
    const-string/jumbo v21, "advanced_security"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    .line 475
    .local v3, "advancedCategory":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v3, :cond_9

    .line 476
    const-string/jumbo v21, "manage_trust_agents"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 477
    .local v9, "manageAgents":Landroid/support/v7/preference/Preference;
    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    sget v22, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 486
    .end local v9    # "manageAgents":Landroid/support/v7/preference/Preference;
    :cond_9
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v21

    .line 487
    const-class v22, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    .line 486
    invoke-virtual/range {v21 .. v24}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 489
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    sget-object v21, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_11

    .line 490
    sget-object v21, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v21, v21, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    .line 491
    .local v10, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 489
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 337
    .end local v3    # "advancedCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v4    # "b":Landroid/os/PersistableBundle;
    .end local v5    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v6    # "deviceAdminCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v7    # "i":I
    .end local v10    # "pref":Landroid/support/v7/preference/Preference;
    .end local v16    # "securityCategory":Landroid/support/v7/preference/PreferenceGroup;
    .end local v18    # "tm":Landroid/telephony/TelephonyManager;
    .end local v19    # "um":Landroid/os/UserManager;
    .restart local v13    # "profileResid":I
    :cond_b
    const-string/jumbo v21, "unlock_set_or_change_profile"

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 377
    .end local v13    # "profileResid":I
    .restart local v16    # "securityCategory":Landroid/support/v7/preference/PreferenceGroup;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mQuickPayPreference:Landroid/support/v7/preference/Preference;

    move-object/from16 v21, v0

    const v22, 0x7f0e03ad

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 384
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2

    .line 401
    .restart local v4    # "b":Landroid/os/PersistableBundle;
    .restart local v5    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_e
    const-string/jumbo v21, "sim_lock"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->isSimReady()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    .line 456
    .restart local v6    # "deviceAdminCategory":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v19    # "um":Landroid/os/UserManager;
    :cond_f
    const/16 v21, 0x1

    goto/16 :goto_4

    .line 478
    .restart local v3    # "advancedCategory":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v9    # "manageAgents":Landroid/support/v7/preference/Preference;
    :cond_10
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 479
    const v21, 0x7f0e06ae

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto/16 :goto_5

    .line 494
    .end local v9    # "manageAgents":Landroid/support/v7/preference/Preference;
    .restart local v7    # "i":I
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SecuritySettings;->mIsAdmin:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 495
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v21

    if-eqz v21, :cond_15

    .line 497
    const v21, 0x7f080072

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 503
    :cond_12
    :goto_7
    const-string/jumbo v21, "privacy_catagory"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/PreferenceCategory;

    .line 504
    .local v12, "privacyCatagory":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v21, "preference_divider_line_applocker"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 505
    .local v11, "preferenceDividerLineAppLocker":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v21

    if-eqz v21, :cond_14

    .line 506
    if-eqz v12, :cond_13

    .line 507
    invoke-virtual {v15, v12}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 508
    invoke-virtual {v15, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 511
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 517
    :cond_14
    return-object v15

    .line 500
    .end local v11    # "preferenceDividerLineAppLocker":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    .end local v12    # "privacyCatagory":Landroid/support/v7/preference/PreferenceCategory;
    :cond_15
    const v21, 0x7f080084

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    goto :goto_7
.end method

.method private disableIfPasswordQualityManaged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 525
    invoke-static {v2, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 527
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    .line 528
    const/high16 v3, 0x80000

    .line 527
    if-ne v2, v3, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/RestrictedPreference;

    .line 531
    .local v1, "pref":Lcom/android/settings_exlib/RestrictedPreference;
    invoke-virtual {v1, v0}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 524
    .end local v1    # "pref":Lcom/android/settings_exlib/RestrictedPreference;
    :cond_0
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 1541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    .line 610
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 611
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v8, Lcom/android/settings_ex/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 613
    const/16 v9, 0x80

    .line 612
    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 614
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v8, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 617
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x10

    .line 616
    invoke-static {p0, v9, v8}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 619
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-object v6

    .line 620
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 621
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 622
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_3

    .line 620
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 623
    :cond_3
    invoke-static {v4, v3}, Lcom/android/settings_ex/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 625
    invoke-static {v3, v4}, Lcom/android/settings_ex/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v7

    .line 626
    .local v7, "trustAgentComponentInfo":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v8, v7, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    .line 628
    invoke-static {v4}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    .line 627
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 629
    iget-object v8, v7, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 626
    if-nez v8, :cond_2

    .line 630
    if-eqz v0, :cond_4

    .line 631
    invoke-static {v4}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    .line 630
    invoke-virtual {p2, v10, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_4

    .line 632
    iput-object v0, v7, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 634
    :cond_4
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "managedPasswordProvider"    # Lcom/android/settings_ex/ManagedLockPasswordProvider;
    .param p3, "userId"    # I

    .prologue
    .line 253
    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    if-ne p3, v2, :cond_0

    const/4 v0, 0x1

    .line 254
    .local v0, "isMyUser":Z
    :goto_0
    const/4 v1, 0x0

    .line 255
    .local v1, "resid":I
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 256
    if-nez v0, :cond_1

    .line 257
    const v1, 0x7f080076

    .line 285
    :goto_1
    return v1

    .line 253
    .end local v0    # "isMyUser":Z
    .end local v1    # "resid":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isMyUser":Z
    goto :goto_0

    .line 258
    .restart local v1    # "resid":I
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    const v1, 0x7f080075

    goto :goto_1

    .line 261
    :cond_2
    const v1, 0x7f080071

    goto :goto_1

    .line 264
    :cond_3
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 266
    :sswitch_0
    if-eqz v0, :cond_4

    const v1, 0x7f08007b

    goto :goto_1

    .line 267
    :cond_4
    const v1, 0x7f08007c

    goto :goto_1

    .line 271
    :sswitch_1
    if-eqz v0, :cond_5

    const v1, 0x7f08007f

    goto :goto_1

    .line 272
    :cond_5
    const v1, 0x7f080080

    goto :goto_1

    .line 277
    :sswitch_2
    if-eqz v0, :cond_6

    const v1, 0x7f080078

    goto :goto_1

    .line 278
    :cond_6
    const v1, 0x7f080079

    goto :goto_1

    .line 281
    :sswitch_3
    if-eqz v0, :cond_7

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p2, v2}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->getResIdForLockUnlockScreen(Z)I

    move-result v1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
        0x80000 -> :sswitch_3
    .end sparse-switch
.end method

.method private gotoFindSensor([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 1520
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1521
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    .line 1522
    const-class v2, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1521
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1523
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1524
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1525
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1519
    return-void
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 642
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 643
    const-string/jumbo v2, "install_non_market_apps"

    .line 642
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
    .line 574
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 576
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 578
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 579
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 580
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 581
    const/4 v4, 0x1

    return v4

    .line 586
    .end local v0    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v1    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method private isSimReady()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 593
    const/4 v0, 0x0

    .line 595
    .local v0, "simState":I
    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 596
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 597
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "subInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 598
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 599
    if-eq v0, v7, :cond_0

    .line 600
    if-eqz v0, :cond_0

    .line 601
    return v7

    .line 605
    .end local v1    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "subInfo$iterator":Ljava/util/Iterator;
    :cond_1
    return v6
.end method

.method private launchChooseOrConfirmLock(I)V
    .locals 9
    .param p1, "requestCode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 1545
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1547
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1549
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const v2, 0x7f0e0265

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1550
    iget-wide v6, p0, Lcom/android/settings_ex/SecuritySettings;->mChallenge:J

    move v2, p1

    move-object v5, v4

    .line 1548
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1551
    const-string/jumbo v2, "com.android.settings_ex"

    const-class v3, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1552
    const-string/jumbo v2, "minimum_quality"

    .line 1553
    const/high16 v3, 0x10000

    .line 1552
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1554
    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1556
    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1557
    const-string/jumbo v2, "challenge"

    iget-wide v4, p0, Lcom/android/settings_ex/SecuritySettings;->mChallenge:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1558
    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1544
    :cond_0
    return-void
.end method

.method private launchConfirmDeviceLockForUnification()V
    .locals 5

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 880
    const v3, 0x7f0e065d

    .line 879
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 882
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 884
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    const/16 v3, 0x80

    const/4 v4, 0x1

    .line 883
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 885
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->launchConfirmProfileLockForUnification()V

    .line 878
    :cond_0
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 5

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 891
    const v3, 0x7f0e065e

    .line 890
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 893
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 895
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    iget v2, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    .line 894
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 896
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->unifyLocks()V

    .line 897
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 889
    :cond_0
    return-void
.end method

.method private maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V
    .locals 2
    .param p1, "securityCategory"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "userId"    # I

    .prologue
    .line 538
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 537
    invoke-static {v1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintPreferenceForUser(Landroid/content/Context;I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 539
    .local v0, "fingerprintPreference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 535
    :cond_0
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 648
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 649
    return-void

    .line 652
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "install_non_market_apps"

    .line 653
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 652
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 646
    return-void

    .line 653
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unifyLocks()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 903
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 904
    .local v1, "profileQuality":I
    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    .line 905
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 906
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 907
    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v5, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 905
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 913
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 914
    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 913
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 916
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    .line 917
    .local v0, "profilePatternVisibility":Z
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 918
    iput-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 919
    iput-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 901
    return-void

    .line 909
    .end local v0    # "profilePatternVisibility":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 910
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 911
    sget v5, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 909
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private unifyUncompliantLocks()V
    .locals 6

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 924
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 923
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 925
    const-string/jumbo v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 926
    const v3, 0x7f0e0657

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 925
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 922
    return-void
.end method

.method private ununifyLocks()V
    .locals 6

    .prologue
    .line 930
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 931
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 933
    const-string/jumbo v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 934
    const v3, 0x7f0e0658

    .line 935
    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    .line 932
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 929
    return-void
.end method

.method private updateAddPreference()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1462
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1463
    const v7, 0x10e00a1

    .line 1462
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1464
    .local v1, "max":I
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v7, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v1, :cond_0

    move v3, v5

    .line 1465
    .local v3, "tooMany":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 1466
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const v8, 0x7f0e0637

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1467
    .local v2, "maxSummary":Ljava/lang/CharSequence;
    :goto_1
    const-string/jumbo v6, "key_fingerprint_add"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1468
    .local v0, "addPreference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1469
    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1460
    return-void

    .end local v0    # "addPreference":Landroid/support/v7/preference/Preference;
    .end local v2    # "maxSummary":Ljava/lang/CharSequence;
    .end local v3    # "tooMany":Z
    :cond_0
    move v3, v4

    .line 1464
    goto :goto_0

    .line 1466
    .restart local v3    # "tooMany":Z
    :cond_1
    const-string/jumbo v2, ""

    .restart local v2    # "maxSummary":Ljava/lang/CharSequence;
    goto :goto_1

    .restart local v0    # "addPreference":Landroid/support/v7/preference/Preference;
    :cond_2
    move v4, v5

    .line 1469
    goto :goto_2
.end method

.method private updateUnificationPreference()V
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 739
    iget v2, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 738
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 736
    :cond_0
    return-void

    .line 738
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 658
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 659
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0933

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 660
    const v1, 0x1080027

    .line 658
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 661
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e09f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 662
    const v1, 0x1040013

    .line 658
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 663
    const v1, 0x1040009

    .line 658
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 656
    return-void
.end method


# virtual methods
.method public checkIfNeedPassword()Z
    .locals 3

    .prologue
    .line 1473
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1474
    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 1473
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1475
    .local v0, "passwordQuality":I
    sparse-switch v0, :sswitch_data_0

    .line 1484
    const/4 v1, 0x0

    return v1

    .line 1482
    :sswitch_0
    const/4 v1, 0x1

    return v1

    .line 1475
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 992
    const v0, 0x7f0e0db2

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 214
    const/16 v0, 0x57

    return v0
.end method

.method public gotoAppLockerPage()V
    .locals 6

    .prologue
    .line 1530
    const/4 v1, 0x0

    .line 1532
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v3, "com.android.settings_ex"

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.settings_ex.Settings$OPAppLockerActivity"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1534
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 1528
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1535
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1536
    .end local v1    # "intent":Landroid/content/Intent;
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string/jumbo v3, "SecuritySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No activity found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1535
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    move-object v1, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public gotoEnrollFingerprint([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 1510
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1511
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    .line 1512
    const-class v2, Lcom/android/settings_ex/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1511
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1513
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1514
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1515
    const-string/jumbo v1, "show_actionbar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1516
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1509
    return-void
.end method

.method public gotoFingerprintEditPage(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 1490
    if-nez p1, :cond_0

    .line 1491
    return-void

    :cond_0
    move-object v7, p1

    .line 1493
    check-cast v7, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;

    .line 1494
    .local v7, "fpref":Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;
    invoke-virtual {v7}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v6

    .line 1495
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1496
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "fingerprint_parcelable"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1498
    const-string/jumbo v2, "com.oneplus.settings.opfinger.OPFingerPrintEditFragments"

    .line 1499
    const v3, 0x7f0e01e5

    .line 1500
    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    .line 1497
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1489
    return-void
.end method

.method public gotoFingerprintEnrollIntroduction()V
    .locals 3

    .prologue
    .line 1504
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1505
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    const-class v2, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1503
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x66

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 809
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 810
    iget-boolean v2, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    if-eqz v2, :cond_5

    .line 811
    :cond_0
    if-eq p1, v8, :cond_1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_f

    .line 812
    :cond_1
    :goto_0
    if-eq p2, v7, :cond_2

    if-ne p2, v4, :cond_4

    .line 814
    :cond_2
    if-eqz p3, :cond_3

    .line 815
    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mToken:[B

    .line 817
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mToken:[B

    if-eqz v2, :cond_4

    .line 818
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v3, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    .line 819
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 820
    .local v0, "fingerprintCount":I
    if-lez v0, :cond_11

    .line 821
    iget-boolean v2, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    if-eqz v2, :cond_10

    .line 822
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    .line 832
    .end local v0    # "fingerprintCount":I
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_4
    :goto_1
    iput-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    .line 833
    iput-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    .line 836
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEditFingerprintClick:Z

    if-eqz v2, :cond_9

    .line 837
    if-eq p1, v8, :cond_6

    const/16 v2, 0x69

    if-ne p1, v2, :cond_8

    .line 838
    :cond_6
    if-eq p2, v7, :cond_7

    if-ne p2, v4, :cond_8

    .line 839
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintEditPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SecuritySettings;->gotoFingerprintEditPage(Landroid/support/v7/preference/Preference;)V

    .line 841
    :cond_8
    iput-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEditFingerprintClick:Z

    .line 844
    :cond_9
    iget-boolean v2, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    if-eqz v2, :cond_d

    .line 845
    if-eq p1, v8, :cond_a

    const/16 v2, 0x68

    if-ne p1, v2, :cond_c

    .line 846
    :cond_a
    if-eq p2, v7, :cond_b

    if-ne p2, v4, :cond_c

    .line 847
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->gotoAppLockerPage()V

    .line 849
    :cond_c
    iput-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    .line 852
    :cond_d
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_12

    if-ne p2, v4, :cond_12

    .line 853
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v2, :cond_e

    .line 854
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 855
    iput-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 857
    :cond_e
    return-void

    .line 811
    :cond_f
    const/16 v2, 0x6a

    if-ne p1, v2, :cond_4

    goto :goto_0

    .line 824
    .restart local v0    # "fingerprintCount":I
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_10
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mToken:[B

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SecuritySettings;->gotoEnrollFingerprint([B)V

    goto :goto_1

    .line 827
    :cond_11
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mToken:[B

    invoke-direct {p0, v2}, Lcom/android/settings_ex/SecuritySettings;->gotoFindSensor([B)V

    goto :goto_1

    .line 858
    .end local v0    # "fingerprintCount":I
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_12
    const/16 v2, 0x80

    if-ne p1, v2, :cond_13

    .line 859
    if-ne p2, v4, :cond_13

    .line 861
    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 860
    iput-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 862
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->launchConfirmProfileLockForUnification()V

    .line 863
    return-void

    .line 864
    :cond_13
    const/16 v2, 0x81

    if-ne p1, v2, :cond_14

    .line 865
    if-ne p2, v4, :cond_14

    .line 867
    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 866
    iput-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 868
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->unifyLocks()V

    .line 869
    return-void

    .line 870
    :cond_14
    const/16 v2, 0x82

    if-ne p1, v2, :cond_15

    .line 871
    if-ne p2, v4, :cond_15

    .line 872
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->ununifyLocks()V

    .line 873
    return-void

    .line 875
    :cond_15
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 808
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, -0x1

    .line 669
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_1

    .line 670
    if-ne p2, v3, :cond_2

    const/4 v0, 0x1

    .line 671
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 672
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v1, :cond_0

    .line 673
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 676
    :cond_0
    const-string/jumbo v1, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SecuritySettings;->setResult(I)V

    .line 678
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->finish()V

    .line 668
    .end local v0    # "turnOn":Z
    :cond_1
    return-void

    .line 670
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 222
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-static {v0, v1}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings_ex/ManagedLockPasswordProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    .line 226
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 230
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 232
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 233
    const-string/jumbo v1, "fingerprint"

    .line 232
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 234
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->isSupportFinger:Z

    .line 237
    if-eqz p1, :cond_0

    .line 238
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 237
    if-eqz v0, :cond_0

    .line 239
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 242
    :cond_0
    if-eqz p1, :cond_1

    .line 243
    const-string/jumbo v0, "GotoEnrollClick"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    .line 244
    const-string/jumbo v0, "GotoAppLockerClick"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    .line 245
    const-string/jumbo v0, "GotoQuickPayClick"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    .line 218
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 693
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 694
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 692
    :cond_0
    return-void
.end method

.method public onGearClick(Lcom/android/settings_ex/GearPreference;)V
    .locals 6
    .param p1, "p"    # Lcom/android/settings_ex/GearPreference;

    .prologue
    const/4 v3, 0x0

    .line 686
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {p1}, Lcom/android/settings_ex/GearPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    const-class v0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 685
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 940
    const/4 v5, 0x1

    .line 941
    .local v5, "result":Z
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 942
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    .line 943
    .local v4, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v7, "visiblepattern_profile"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 944
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 945
    iget v9, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 944
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 946
    return v0

    .line 948
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget v8, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 987
    :cond_1
    :goto_0
    return v5

    .line 949
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v7, "unification"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 950
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 951
    iget v10, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 950
    invoke-static {v7, v9, v10}, Lcom/android/settings_ex/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 952
    return v0

    .line 954
    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 956
    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v7

    .line 957
    const/high16 v8, 0x10000

    .line 956
    if-lt v7, v8, :cond_4

    .line 958
    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 959
    iget v8, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 958
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v0

    .line 961
    .local v0, "compliantForDevice":Z
    :cond_4
    invoke-static {v0}, Lcom/android/settings_ex/SecuritySettings$UnificationConfirmationDialog;->newIntance(Z)Lcom/android/settings_ex/SecuritySettings$UnificationConfirmationDialog;

    move-result-object v1

    .line 962
    .local v1, "dialog":Lcom/android/settings_ex/SecuritySettings$UnificationConfirmationDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string/jumbo v8, "unification_dialog"

    invoke-virtual {v1, v7, v8}, Lcom/android/settings_ex/SecuritySettings$UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 964
    .end local v0    # "compliantForDevice":Z
    .end local v1    # "dialog":Lcom/android/settings_ex/SecuritySettings$UnificationConfirmationDialog;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 965
    const v9, 0x7f0e065d

    .line 964
    invoke-virtual {v7, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 967
    .local v6, "title":Ljava/lang/String;
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 969
    .local v2, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    sget v7, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    const/16 v9, 0x82

    .line 968
    invoke-virtual {v2, v9, v6, v8, v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v7

    if-nez v7, :cond_1

    .line 970
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->ununifyLocks()V

    goto :goto_0

    .line 973
    .end local v2    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    .end local v6    # "title":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v7, "show_password"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 974
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_password"

    move-object v7, p2

    .line 975
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v8

    .line 974
    :cond_7
    invoke-static {v9, v10, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 976
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto/16 :goto_0

    .line 977
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v7, "toggle_install_applications"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 978
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 979
    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v7, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 980
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->warnAppInstallation()V

    .line 982
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 984
    :cond_9
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 745
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 746
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v0, "oneplus_app_locker"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    iput-boolean v9, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    .line 748
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->launchChooseOrConfirmLock(I)V

    .line 801
    :cond_0
    :goto_0
    return v9

    .line 749
    :cond_1
    const-string/jumbo v0, "oneplus_quick_pay"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    goto :goto_0

    .line 760
    :cond_2
    const-string/jumbo v0, "key_fingerprint_add"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 761
    iput-boolean v9, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    .line 762
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/SecuritySettings;->mChallenge:J

    .line 763
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->checkIfNeedPassword()Z

    move-result v0

    if-nez v0, :cond_3

    .line 764
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->gotoFingerprintEnrollIntroduction()V

    goto :goto_0

    .line 767
    :cond_3
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->launchChooseOrConfirmLock(I)V

    goto :goto_0

    .line 769
    :cond_4
    instance-of v0, p1, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;

    if-eqz v0, :cond_5

    .line 770
    iput-boolean v9, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEditFingerprintClick:Z

    .line 771
    iput-object p1, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintEditPreference:Landroid/support/v7/preference/Preference;

    .line 772
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->launchChooseOrConfirmLock(I)V

    goto :goto_0

    .line 773
    :cond_5
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 774
    const-string/jumbo v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 775
    const v3, 0x7f0e0657

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    .line 774
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 776
    :cond_6
    const-string/jumbo v0, "unlock_set_or_change_profile"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 777
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 778
    iget v2, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 777
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 779
    const/4 v0, 0x0

    return v0

    .line 781
    :cond_7
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 782
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 783
    const-string/jumbo v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 784
    const v3, 0x7f0e0658

    .line 785
    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    .line 783
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 786
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_8
    const-string/jumbo v0, "trust_agent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 788
    new-instance v7, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 789
    .local v7, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 791
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x7e

    .line 790
    invoke-virtual {v7, v1, v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    .line 792
    .local v6, "confirmationLaunched":Z
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 795
    iput-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 799
    .end local v6    # "confirmationLaunched":Z
    .end local v7    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_9
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 714
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 717
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 719
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 721
    iget v4, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 720
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 724
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->updateUnificationPreference()V

    .line 726
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 727
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 728
    const-string/jumbo v4, "show_password"

    .line 727
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Lcom/android/settings_exlib/RestrictedPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settings_exlib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 713
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 727
    goto :goto_0

    .line 732
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Lcom/android/settings_exlib/RestrictedPreference;

    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 701
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 702
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 703
    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 706
    :cond_0
    const-string/jumbo v0, "GotoEnrollClick"

    iget-boolean v1, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 707
    const-string/jumbo v0, "GotoAppLockerClick"

    iget-boolean v1, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 708
    const-string/jumbo v0, "GotoQuickPayClick"

    iget-boolean v1, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 700
    return-void
.end method
