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

.field private static final METHOD_LAUNCHER_APPLOCKER_ACTIVITY:Ljava/lang/String; = "method_launcher_applocker_activity"

.field private static final MY_USER_ID:I

.field private static final ONEPLUS_SECURITY_URI:Ljava/lang/String; = "content://com.oneplus.security.database.SafeProvider"

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
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 140
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 141
    const-string/jumbo v1, "show_password"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_install_applications"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "unification"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "visiblepattern_profile"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 140
    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 148
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 990
    new-instance v0, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;-><init>(Lcom/android/settings_ex/SecuritySettings$SecuritySearchIndexProvider;)V

    .line 989
    sput-object v0, Lcom/android/settings_ex/SecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    .line 94
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 199
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mHasFingerprint:Z

    .line 200
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEditFingerprintClick:Z

    .line 201
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    .line 202
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    .line 205
    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->isSupportFinger:Z

    .line 94
    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "root"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    const/4 v7, 0x0

    .line 1421
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprint_list_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1422
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v6, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    .line 1423
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1425
    .local v0, "fingerprintCount":I
    if-lez v0, :cond_0

    .line 1426
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings;->mHasFingerprint:Z

    .line 1431
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1432
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 1433
    .local v2, "item":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v4, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;-><init>(Landroid/content/Context;)V

    .line 1434
    .local v4, "pref":Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v5}, Lcom/android/settings_ex/SecuritySettings;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1436
    invoke-virtual {v4, v2}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 1437
    invoke-virtual {v4, v7}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->setPersistent(Z)V

    .line 1438
    iget-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprint_list_category:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1439
    invoke-virtual {v4, p0}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 1431
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1428
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v4    # "pref":Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;
    :cond_0
    iput-boolean v7, p0, Lcom/android/settings_ex/SecuritySettings;->mHasFingerprint:Z

    goto :goto_0

    .line 1447
    .restart local v1    # "i":I
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->updateAddPreference()V

    .line 1420
    return-void
.end method

.method private addTrustAgentSettings(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 9
    .param p1, "securityCategory"    # Landroid/support/v7/preference/PreferenceGroup;

    .prologue
    .line 536
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 538
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/android/settings_ex/SecuritySettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 539
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 540
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 542
    .local v0, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v5, Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 543
    .local v5, "trustAgentPreference":Lcom/android/settings_exlib/RestrictedPreference;
    const-string/jumbo v6, "trust_agent"

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 544
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 547
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 548
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 549
    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    invoke-virtual {v5, v4}, Lcom/android/settings_exlib/RestrictedPreference;->setIntent(Landroid/content/Intent;)V

    .line 552
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 554
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 555
    invoke-virtual {v5}, Lcom/android/settings_exlib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v2, :cond_1

    .line 539
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setEnabled(Z)V

    .line 557
    const v6, 0x7f0e0680

    invoke-virtual {v5, v6}, Lcom/android/settings_exlib/RestrictedPreference;->setSummary(I)V

    goto :goto_1

    .line 535
    .end local v0    # "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "trustAgentPreference":Lcom/android/settings_exlib/RestrictedPreference;
    :cond_2
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 25

    .prologue
    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v15

    .line 293
    .local v15, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v15, :cond_0

    .line 294
    invoke-virtual {v15}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 296
    :cond_0
    const v21, 0x7f08006f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v15

    .line 300
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    move-object/from16 v23, v0

    sget v24, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 300
    invoke-static/range {v21 .. v24}, Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;I)I

    move-result v14

    .line 302
    .local v14, "resid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 305
    const-string/jumbo v21, "unlock_set_or_change"

    sget v22, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    sget v22, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-static/range {v21 .. v22}, Lcom/android/settings_ex/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v21, v0

    const/16 v22, -0x2710

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v21

    .line 308
    if-eqz v21, :cond_1

    .line 310
    const v21, 0x7f080081

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 311
    const v21, 0x7f080084

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    move-object/from16 v23, v0

    .line 314
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v24, v0

    .line 312
    invoke-static/range {v21 .. v24}, Lcom/android/settings_ex/SecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings_ex/ManagedLockPasswordProvider;I)I

    move-result v13

    .line 315
    .local v13, "profileResid":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 319
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/android/settings_ex/SecuritySettings;->maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v21

    if-nez v21, :cond_b

    .line 323
    const-string/jumbo v21, "unlock_set_or_change_profile"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 324
    .local v8, "lockPreference":Landroid/support/v7/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 325
    const v22, 0x7f0e09c0

    .line 324
    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 326
    .local v17, "summary":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 330
    const-string/jumbo v21, "unlock_set_or_change"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    .line 339
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

    .line 340
    .local v20, "unlockSetOrChange":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/settings_ex/GearPreference;

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 341
    check-cast v20, Lcom/android/settings_ex/GearPreference;

    .end local v20    # "unlockSetOrChange":Landroid/support/v7/preference/Preference;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/GearPreference;->setOnGearClickListener(Lcom/android/settings_ex/GearPreference$OnGearClickListener;)V

    .line 345
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/SecuritySettings;->mIsAdmin:Z

    .line 349
    const-string/jumbo v21, "security_category"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v16

    .line 348
    check-cast v16, Landroid/support/v7/preference/PreferenceGroup;

    .line 350
    .local v16, "securityCategory":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v16, :cond_3

    .line 353
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addTrustAgentSettings(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 357
    :cond_3
    const-string/jumbo v21, "visiblepattern_profile"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/support/v14/preference/SwitchPreference;

    .line 356
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    .line 358
    const-string/jumbo v21, "unification"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    .line 360
    const v21, 0x7f080046

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 362
    const-string/jumbo v21, "key_fingerprint_list"

    .line 361
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mFingerprint_list_category:Landroid/support/v7/preference/PreferenceCategory;

    .line 363
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/SecuritySettings;->addFingerprintItemPreferences(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 367
    const v21, 0x7f080076

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 369
    const-string/jumbo v21, "privacy_catagory_quick_pay"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 370
    const-string/jumbo v21, "preference_divider_line_quick_pay"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->canShowQuickPay(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_c

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 380
    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    .line 382
    .local v18, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const-string/jumbo v22, "carrier_config"

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 381
    check-cast v5, Landroid/telephony/CarrierConfigManager;

    .line 383
    .local v5, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    .line 384
    .local v4, "b":Landroid/os/PersistableBundle;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SecuritySettings;->mIsAdmin:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->isSimIccReady()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 385
    const-string/jumbo v21, "hide_sim_lock_settings_bool"

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 384
    if-eqz v21, :cond_d

    .line 386
    :cond_4
    const-string/jumbo v21, "sim_lock"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 388
    const-string/jumbo v21, "simlock_preference_divider_line"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 394
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 395
    const-string/jumbo v22, "lock_to_app_enabled"

    const/16 v23, 0x0

    .line 394
    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    if-eqz v21, :cond_5

    .line 396
    const-string/jumbo v21, "screen_pinning_settings"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0eb8

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 396
    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 401
    :cond_5
    const-string/jumbo v21, "show_password"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    .line 402
    const-string/jumbo v21, "credentials_reset"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/android/settings_exlib/RestrictedPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Lcom/android/settings_exlib/RestrictedPreference;

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    const-string/jumbo v22, "user"

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/UserManager;

    .line 406
    .local v19, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 441
    const-string/jumbo v21, "device_admin_category"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 440
    check-cast v6, Landroid/support/v7/preference/PreferenceGroup;

    .line 443
    .local v6, "deviceAdminCategory":Landroid/support/v7/preference/PreferenceGroup;
    const-string/jumbo v21, "toggle_install_applications"

    .line 442
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->isNonMarketAppsAllowed()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 447
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

    if-eqz v21, :cond_e

    const/16 v21, 0x0

    :goto_3
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    .line 449
    const-string/jumbo v22, "no_install_unknown_sources"

    sget v23, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 448
    invoke-static/range {v21 .. v23}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v21

    if-nez v21, :cond_6

    .line 450
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    .line 451
    const-string/jumbo v22, "no_install_apps"

    sget v23, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 450
    invoke-static/range {v21 .. v23}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v21

    .line 448
    if-eqz v21, :cond_7

    .line 452
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setEnabled(Z)V

    .line 454
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    .line 456
    const-string/jumbo v22, "no_install_unknown_sources"

    .line 455
    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v21

    if-nez v21, :cond_8

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    move-object/from16 v21, v0

    .line 459
    const-string/jumbo v22, "no_install_apps"

    .line 458
    invoke-virtual/range {v21 .. v22}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 465
    :cond_8
    const-string/jumbo v21, "advanced_security"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    .line 466
    .local v3, "advancedCategory":Landroid/support/v7/preference/PreferenceGroup;
    if-eqz v3, :cond_9

    .line 467
    const-string/jumbo v21, "manage_trust_agents"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 468
    .local v9, "manageAgents":Landroid/support/v7/preference/Preference;
    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v21, v0

    sget v22, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v21

    if-eqz v21, :cond_f

    .line 477
    .end local v9    # "manageAgents":Landroid/support/v7/preference/Preference;
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/settings_ex/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/search/Index;

    move-result-object v21

    .line 478
    const-class v22, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    .line 477
    invoke-virtual/range {v21 .. v24}, Lcom/android/settings_ex/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 480
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5
    sget-object v21, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_10

    .line 481
    sget-object v21, Lcom/android/settings_ex/SecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v21, v21, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    .line 482
    .local v10, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    invoke-virtual {v10, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 480
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 334
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

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    move/from16 v22, v0

    .line 334
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/SecuritySettings;->disableIfPasswordQualityManaged(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 375
    .end local v13    # "profileResid":I
    .restart local v16    # "securityCategory":Landroid/support/v7/preference/PreferenceGroup;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_1

    .line 392
    .restart local v4    # "b":Landroid/os/PersistableBundle;
    .restart local v5    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v18    # "tm":Landroid/telephony/TelephonyManager;
    :cond_d
    const-string/jumbo v21, "sim_lock"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v21

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/SecuritySettings;->isSimReady()Z

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 447
    .restart local v6    # "deviceAdminCategory":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v19    # "um":Landroid/os/UserManager;
    :cond_e
    const/16 v21, 0x1

    goto/16 :goto_3

    .line 469
    .restart local v3    # "advancedCategory":Landroid/support/v7/preference/PreferenceGroup;
    .restart local v9    # "manageAgents":Landroid/support/v7/preference/Preference;
    :cond_f
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 470
    const v21, 0x7f0e0680

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto/16 :goto_4

    .line 485
    .end local v9    # "manageAgents":Landroid/support/v7/preference/Preference;
    .restart local v7    # "i":I
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/SecuritySettings;->mIsAdmin:Z

    move/from16 v21, v0

    if-eqz v21, :cond_11

    .line 486
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v21

    if-eqz v21, :cond_14

    .line 488
    const v21, 0x7f080071

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    .line 494
    :cond_11
    :goto_6
    const-string/jumbo v21, "privacy_catagory"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/PreferenceCategory;

    .line 495
    .local v12, "privacyCatagory":Landroid/support/v7/preference/PreferenceCategory;
    const-string/jumbo v21, "preference_divider_line_applocker"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Lcom/oneplus/settings/ui/OPPreferenceDivider;

    .line 496
    .local v11, "preferenceDividerLineAppLocker":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v21

    if-eqz v21, :cond_13

    .line 497
    if-eqz v12, :cond_12

    .line 498
    invoke-virtual {v15, v12}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 499
    invoke-virtual {v15, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 502
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v21, v0

    if-eqz v21, :cond_13

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->mQuickPayCategory:Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/SecuritySettings;->preferenceDividerLineQuickPay:Lcom/oneplus/settings/ui/OPPreferenceDivider;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 508
    :cond_13
    return-object v15

    .line 491
    .end local v11    # "preferenceDividerLineAppLocker":Lcom/oneplus/settings/ui/OPPreferenceDivider;
    .end local v12    # "privacyCatagory":Landroid/support/v7/preference/PreferenceCategory;
    :cond_14
    const v21, 0x7f080083

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SecuritySettings;->addPreferencesFromResource(I)V

    goto :goto_6
.end method

.method private disableIfPasswordQualityManaged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 516
    invoke-static {v2, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 518
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3, p2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v2

    .line 519
    const/high16 v3, 0x80000

    .line 518
    if-ne v2, v3, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/RestrictedPreference;

    .line 522
    .local v1, "pref":Lcom/android/settings_exlib/RestrictedPreference;
    invoke-virtual {v1, v0}, Lcom/android/settings_exlib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 515
    .end local v1    # "pref":Lcom/android/settings_exlib/RestrictedPreference;
    :cond_0
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 1531
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

    .line 601
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 602
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v8, Lcom/android/settings_ex/SecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 604
    const/16 v9, 0x80

    .line 603
    invoke-virtual {v3, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 605
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v8, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 608
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x10

    .line 607
    invoke-static {p0, v9, v8}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 610
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-object v6

    .line 611
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 612
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 613
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_3

    .line 611
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 614
    :cond_3
    invoke-static {v4, v3}, Lcom/android/settings_ex/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 616
    invoke-static {v3, v4}, Lcom/android/settings_ex/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v7

    .line 617
    .local v7, "trustAgentComponentInfo":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    iget-object v8, v7, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v8, :cond_2

    .line 619
    invoke-static {v4}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    .line 618
    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 620
    iget-object v8, v7, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    .line 617
    if-nez v8, :cond_2

    .line 621
    if-eqz v0, :cond_4

    .line 622
    invoke-static {v4}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    .line 621
    invoke-virtual {p2, v10, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_4

    .line 623
    iput-object v0, v7, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 625
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
    .line 250
    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    if-ne p3, v2, :cond_0

    const/4 v0, 0x1

    .line 251
    .local v0, "isMyUser":Z
    :goto_0
    const/4 v1, 0x0

    .line 252
    .local v1, "resid":I
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 253
    if-nez v0, :cond_1

    .line 254
    const v1, 0x7f080075

    .line 282
    :goto_1
    return v1

    .line 250
    .end local v0    # "isMyUser":Z
    .end local v1    # "resid":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "isMyUser":Z
    goto :goto_0

    .line 255
    .restart local v1    # "resid":I
    :cond_1
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    const v1, 0x7f080074

    goto :goto_1

    .line 258
    :cond_2
    const v1, 0x7f080070

    goto :goto_1

    .line 261
    :cond_3
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 263
    :sswitch_0
    if-eqz v0, :cond_4

    const v1, 0x7f08007a

    goto :goto_1

    .line 264
    :cond_4
    const v1, 0x7f08007b

    goto :goto_1

    .line 268
    :sswitch_1
    if-eqz v0, :cond_5

    const v1, 0x7f08007e

    goto :goto_1

    .line 269
    :cond_5
    const v1, 0x7f08007f

    goto :goto_1

    .line 274
    :sswitch_2
    if-eqz v0, :cond_6

    const v1, 0x7f080077

    goto :goto_1

    .line 275
    :cond_6
    const v1, 0x7f080078

    goto :goto_1

    .line 278
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

    .line 261
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
    .line 1511
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1512
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    .line 1513
    const-class v2, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1512
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1515
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1516
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1510
    return-void
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 633
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 634
    const-string/jumbo v2, "install_non_market_apps"

    .line 633
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
    .line 565
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 567
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 569
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 570
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

    .line 571
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 572
    const/4 v4, 0x1

    return v4

    .line 577
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

    .line 584
    const/4 v0, 0x0

    .line 586
    .local v0, "simState":I
    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 587
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 588
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

    .line 589
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    .line 590
    if-eq v0, v7, :cond_0

    .line 591
    if-eqz v0, :cond_0

    .line 592
    return v7

    .line 596
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

    .line 1535
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1537
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1539
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const v2, 0x7f0e0265

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1540
    iget-wide v6, p0, Lcom/android/settings_ex/SecuritySettings;->mChallenge:J

    move v2, p1

    move-object v5, v4

    .line 1538
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1541
    const-string/jumbo v2, "com.android.settings_ex"

    const-class v3, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1542
    const-string/jumbo v2, "minimum_quality"

    .line 1543
    const/high16 v3, 0x10000

    .line 1542
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1544
    const-string/jumbo v2, "hide_disabled_prefs"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1546
    const-string/jumbo v2, "has_challenge"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1547
    const-string/jumbo v2, "challenge"

    iget-wide v4, p0, Lcom/android/settings_ex/SecuritySettings;->mChallenge:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1548
    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1534
    :cond_0
    return-void
.end method

.method private launchConfirmDeviceLockForUnification()V
    .locals 5

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 871
    const v3, 0x7f0e062f

    .line 870
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 875
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    const/16 v3, 0x80

    const/4 v4, 0x1

    .line 874
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 876
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->launchConfirmProfileLockForUnification()V

    .line 869
    :cond_0
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 5

    .prologue
    .line 881
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 882
    const v3, 0x7f0e0630

    .line 881
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 884
    .local v1, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 886
    .local v0, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    iget v2, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    .line 885
    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v2

    if-nez v2, :cond_0

    .line 887
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->unifyLocks()V

    .line 888
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 880
    :cond_0
    return-void
.end method

.method private maybeAddFingerprintPreference(Landroid/support/v7/preference/PreferenceGroup;I)V
    .locals 2
    .param p1, "securityCategory"    # Landroid/support/v7/preference/PreferenceGroup;
    .param p2, "userId"    # I

    .prologue
    .line 529
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 528
    invoke-static {v1, p2}, Lcom/android/settings_ex/fingerprint/FingerprintSettings;->getFingerprintPreferenceForUser(Landroid/content/Context;I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 530
    .local v0, "fingerprintPreference":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 526
    :cond_0
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 639
    .local v0, "um":Landroid/os/UserManager;
    const-string/jumbo v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    return-void

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "install_non_market_apps"

    .line 644
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 643
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 637
    return-void

    .line 644
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unifyLocks()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 894
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 895
    .local v1, "profileQuality":I
    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_0

    .line 896
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 897
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 898
    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    sget v5, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 896
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 904
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 905
    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 904
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 907
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    .line 908
    .local v0, "profilePatternVisibility":Z
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 909
    iput-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 910
    iput-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 892
    return-void

    .line 900
    .end local v0    # "profilePatternVisibility":Z
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 901
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 902
    sget v5, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 900
    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private unifyUncompliantLocks()V
    .locals 6

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 915
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 914
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 916
    const-string/jumbo v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 917
    const v3, 0x7f0e0629

    const/16 v4, 0x7b

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 916
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 913
    return-void
.end method

.method private ununifyLocks()V
    .locals 6

    .prologue
    .line 921
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 922
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 924
    const-string/jumbo v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 925
    const v3, 0x7f0e062a

    .line 926
    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    .line 923
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 920
    return-void
.end method

.method private updateAddPreference()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1453
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1454
    const v7, 0x10e00a1

    .line 1453
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1455
    .local v1, "max":I
    iget-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v7, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v1, :cond_0

    move v3, v5

    .line 1456
    .local v3, "tooMany":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 1457
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const v8, 0x7f0e0609

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1458
    .local v2, "maxSummary":Ljava/lang/CharSequence;
    :goto_1
    const-string/jumbo v6, "key_fingerprint_add"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 1459
    .local v0, "addPreference":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1460
    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 1451
    return-void

    .end local v0    # "addPreference":Landroid/support/v7/preference/Preference;
    .end local v2    # "maxSummary":Ljava/lang/CharSequence;
    .end local v3    # "tooMany":Z
    :cond_0
    move v3, v4

    .line 1455
    goto :goto_0

    .line 1457
    .restart local v3    # "tooMany":Z
    :cond_1
    const-string/jumbo v2, ""

    .restart local v2    # "maxSummary":Ljava/lang/CharSequence;
    goto :goto_1

    .restart local v0    # "addPreference":Landroid/support/v7/preference/Preference;
    :cond_2
    move v4, v5

    .line 1460
    goto :goto_2
.end method

.method private updateUnificationPreference()V
    .locals 3

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 729
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mUnifyProfile:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 730
    iget v2, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 729
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 727
    :cond_0
    return-void

    .line 729
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 649
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 650
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0905

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 651
    const v1, 0x1080027

    .line 649
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 652
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e09ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 653
    const v1, 0x1040013

    .line 649
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 654
    const v1, 0x1040009

    .line 649
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 647
    return-void
.end method


# virtual methods
.method public checkIfNeedPassword()Z
    .locals 3

    .prologue
    .line 1464
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 1465
    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    .line 1464
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 1466
    .local v0, "passwordQuality":I
    sparse-switch v0, :sswitch_data_0

    .line 1475
    const/4 v1, 0x0

    return v1

    .line 1473
    :sswitch_0
    const/4 v1, 0x1

    return v1

    .line 1466
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
    .line 983
    const v0, 0x7f0e0d84

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 211
    const/16 v0, 0x57

    return v0
.end method

.method public gotoAppLockerPage()V
    .locals 6

    .prologue
    .line 1522
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1523
    const-string/jumbo v2, "content://com.oneplus.security.database.SafeProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1524
    const-string/jumbo v3, "method_launcher_applocker_activity"

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1522
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1519
    :goto_0
    return-void

    .line 1525
    :catch_0
    move-exception v0

    .line 1526
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SecuritySettings"

    const-string/jumbo v2, "Launcher appLocker activity failed "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public gotoEnrollFingerprint([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 1501
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1502
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    .line 1503
    const-class v2, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1502
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1504
    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1505
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    sget v2, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1506
    const-string/jumbo v1, "show_actionbar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1507
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1500
    return-void
.end method

.method public gotoFingerprintEditPage(Landroid/support/v7/preference/Preference;)V
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 1481
    if-nez p1, :cond_0

    .line 1482
    return-void

    :cond_0
    move-object v7, p1

    .line 1484
    check-cast v7, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;

    .line 1485
    .local v7, "fpref":Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;
    invoke-virtual {v7}, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v6

    .line 1486
    .local v6, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1487
    .local v5, "bundle":Landroid/os/Bundle;
    const-string/jumbo v0, "fingerprint_parcelable"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1489
    const-string/jumbo v2, "com.oneplus.settings.opfinger.OPFingerPrintEditFragments"

    .line 1490
    const v3, 0x7f0e01e5

    .line 1491
    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    .line 1488
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1480
    return-void
.end method

.method public gotoFingerprintEnrollIntroduction()V
    .locals 3

    .prologue
    .line 1495
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1496
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings_ex"

    const-class v2, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1497
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1494
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

    .line 800
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 801
    iget-boolean v2, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    if-eqz v2, :cond_5

    .line 802
    :cond_0
    if-eq p1, v8, :cond_1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_f

    .line 803
    :cond_1
    :goto_0
    if-eq p2, v7, :cond_2

    if-ne p2, v4, :cond_4

    .line 805
    :cond_2
    if-eqz p3, :cond_3

    .line 806
    const-string/jumbo v2, "hw_auth_token"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mToken:[B

    .line 808
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mToken:[B

    if-eqz v2, :cond_4

    .line 809
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v3, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v1

    .line 810
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 811
    .local v0, "fingerprintCount":I
    if-lez v0, :cond_11

    .line 812
    iget-boolean v2, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    if-eqz v2, :cond_10

    .line 813
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    .line 823
    .end local v0    # "fingerprintCount":I
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_4
    :goto_1
    iput-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    .line 824
    iput-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    .line 827
    :cond_5
    iget-boolean v2, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEditFingerprintClick:Z

    if-eqz v2, :cond_9

    .line 828
    if-eq p1, v8, :cond_6

    const/16 v2, 0x69

    if-ne p1, v2, :cond_8

    .line 829
    :cond_6
    if-eq p2, v7, :cond_7

    if-ne p2, v4, :cond_8

    .line 830
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintEditPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SecuritySettings;->gotoFingerprintEditPage(Landroid/support/v7/preference/Preference;)V

    .line 832
    :cond_8
    iput-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEditFingerprintClick:Z

    .line 835
    :cond_9
    iget-boolean v2, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    if-eqz v2, :cond_d

    .line 836
    if-eq p1, v8, :cond_a

    const/16 v2, 0x68

    if-ne p1, v2, :cond_c

    .line 837
    :cond_a
    if-eq p2, v7, :cond_b

    if-ne p2, v4, :cond_c

    .line 838
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->gotoAppLockerPage()V

    .line 840
    :cond_c
    iput-boolean v5, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    .line 843
    :cond_d
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_12

    if-ne p2, v4, :cond_12

    .line 844
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v2, :cond_e

    .line 845
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 846
    iput-object v6, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 848
    :cond_e
    return-void

    .line 802
    :cond_f
    const/16 v2, 0x6a

    if-ne p1, v2, :cond_4

    goto :goto_0

    .line 815
    .restart local v0    # "fingerprintCount":I
    .restart local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_10
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mToken:[B

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SecuritySettings;->gotoEnrollFingerprint([B)V

    goto :goto_1

    .line 818
    :cond_11
    iget-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mToken:[B

    invoke-direct {p0, v2}, Lcom/android/settings_ex/SecuritySettings;->gotoFindSensor([B)V

    goto :goto_1

    .line 849
    .end local v0    # "fingerprintCount":I
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    :cond_12
    const/16 v2, 0x80

    if-ne p1, v2, :cond_13

    .line 850
    if-ne p2, v4, :cond_13

    .line 852
    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 851
    iput-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentDevicePassword:Ljava/lang/String;

    .line 853
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->launchConfirmProfileLockForUnification()V

    .line 854
    return-void

    .line 855
    :cond_13
    const/16 v2, 0x81

    if-ne p1, v2, :cond_14

    .line 856
    if-ne p2, v4, :cond_14

    .line 858
    const-string/jumbo v2, "password"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 857
    iput-object v2, p0, Lcom/android/settings_ex/SecuritySettings;->mCurrentProfilePassword:Ljava/lang/String;

    .line 859
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->unifyLocks()V

    .line 860
    return-void

    .line 861
    :cond_14
    const/16 v2, 0x82

    if-ne p1, v2, :cond_15

    .line 862
    if-ne p2, v4, :cond_15

    .line 863
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->ununifyLocks()V

    .line 864
    return-void

    .line 866
    :cond_15
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 799
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, -0x1

    .line 660
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_1

    .line 661
    if-ne p2, v3, :cond_2

    const/4 v0, 0x1

    .line 662
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 663
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v1, :cond_0

    .line 664
    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 667
    :cond_0
    const-string/jumbo v1, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 668
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/SecuritySettings;->setResult(I)V

    .line 669
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->finish()V

    .line 659
    .end local v0    # "turnOn":Z
    :cond_1
    return-void

    .line 661
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 219
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 221
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-static {v0, v1}, Lcom/android/settings_ex/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings_ex/ManagedLockPasswordProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mManagedPasswordProvider:Lcom/android/settings_ex/ManagedLockPasswordProvider;

    .line 223
    const-string/jumbo v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 227
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 230
    const-string/jumbo v1, "fingerprint"

    .line 229
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->isSupportFinger:Z

    .line 234
    if-eqz p1, :cond_0

    .line 235
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    .line 234
    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 239
    :cond_0
    if-eqz p1, :cond_1

    .line 240
    const-string/jumbo v0, "GotoEnrollClick"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    .line 241
    const-string/jumbo v0, "GotoAppLockerClick"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    .line 242
    const-string/jumbo v0, "GotoQuickPayClick"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    .line 215
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 684
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 685
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 683
    :cond_0
    return-void
.end method

.method public onGearClick(Lcom/android/settings_ex/GearPreference;)V
    .locals 6
    .param p1, "p"    # Lcom/android/settings_ex/GearPreference;

    .prologue
    const/4 v3, 0x0

    .line 677
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {p1}, Lcom/android/settings_ex/GearPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    const-class v0, Lcom/android/settings_ex/SecuritySettings$SecuritySubSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 676
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

    .line 931
    const/4 v5, 0x1

    .line 932
    .local v5, "result":Z
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 933
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    .line 934
    .local v4, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v7, "visiblepattern_profile"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 935
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 936
    iget v9, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 935
    invoke-static {v7, v8, v9}, Lcom/android/settings_ex/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 937
    return v0

    .line 939
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget v8, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 978
    :cond_1
    :goto_0
    return v5

    .line 940
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v7, "unification"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 941
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v9, p0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 942
    iget v10, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 941
    invoke-static {v7, v9, v10}, Lcom/android/settings_ex/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 943
    return v0

    .line 945
    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 947
    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v7

    .line 948
    const/high16 v8, 0x10000

    .line 947
    if-lt v7, v8, :cond_4

    .line 949
    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 950
    iget v8, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 949
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result v0

    .line 952
    .local v0, "compliantForDevice":Z
    :cond_4
    invoke-static {v0}, Lcom/android/settings_ex/SecuritySettings$UnificationConfirmationDialog;->newIntance(Z)Lcom/android/settings_ex/SecuritySettings$UnificationConfirmationDialog;

    move-result-object v1

    .line 953
    .local v1, "dialog":Lcom/android/settings_ex/SecuritySettings$UnificationConfirmationDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string/jumbo v8, "unification_dialog"

    invoke-virtual {v1, v7, v8}, Lcom/android/settings_ex/SecuritySettings$UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 955
    .end local v0    # "compliantForDevice":Z
    .end local v1    # "dialog":Lcom/android/settings_ex/SecuritySettings$UnificationConfirmationDialog;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 956
    const v9, 0x7f0e062f

    .line 955
    invoke-virtual {v7, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 958
    .local v6, "title":Ljava/lang/String;
    new-instance v2, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 960
    .local v2, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    sget v7, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    const/16 v9, 0x82

    .line 959
    invoke-virtual {v2, v9, v6, v8, v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v7

    if-nez v7, :cond_1

    .line 961
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->ununifyLocks()V

    goto :goto_0

    .line 964
    .end local v2    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    .end local v6    # "title":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    const-string/jumbo v7, "show_password"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 965
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_password"

    move-object v7, p2

    .line 966
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    move v0, v8

    .line 965
    :cond_7
    invoke-static {v9, v10, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 967
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    sget v8, Lcom/android/settings_ex/SecuritySettings;->MY_USER_ID:I

    invoke-virtual {v4, v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto/16 :goto_0

    .line 968
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v7, "toggle_install_applications"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 969
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 970
    iget-object v7, p0, Lcom/android/settings_ex/SecuritySettings;->mToggleAppInstallation:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v7, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 971
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->warnAppInstallation()V

    .line 973
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 975
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

    .line 736
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 737
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v0, "oneplus_app_locker"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    iput-boolean v9, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    .line 739
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->launchChooseOrConfirmLock(I)V

    .line 792
    :cond_0
    :goto_0
    return v9

    .line 740
    :cond_1
    const-string/jumbo v0, "oneplus_quick_pay"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 750
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->gotoQuickPaySettingsPage(Landroid/content/Context;)V

    goto :goto_0

    .line 751
    :cond_2
    const-string/jumbo v0, "key_fingerprint_add"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 752
    iput-boolean v9, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    .line 753
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings_ex/SecuritySettings;->mChallenge:J

    .line 754
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->checkIfNeedPassword()Z

    move-result v0

    if-nez v0, :cond_3

    .line 755
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->gotoFingerprintEnrollIntroduction()V

    goto :goto_0

    .line 758
    :cond_3
    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->launchChooseOrConfirmLock(I)V

    goto :goto_0

    .line 760
    :cond_4
    instance-of v0, p1, Lcom/android/settings_ex/SecuritySettings$FingerprintPreference;

    if-eqz v0, :cond_5

    .line 761
    iput-boolean v9, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEditFingerprintClick:Z

    .line 762
    iput-object p1, p0, Lcom/android/settings_ex/SecuritySettings;->mFingerprintEditPreference:Landroid/support/v7/preference/Preference;

    .line 763
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->launchChooseOrConfirmLock(I)V

    goto :goto_0

    .line 764
    :cond_5
    const-string/jumbo v0, "unlock_set_or_change"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 765
    const-string/jumbo v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 766
    const v3, 0x7f0e0629

    const/16 v4, 0x7b

    move-object v0, p0

    move-object v1, p0

    .line 765
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 767
    :cond_6
    const-string/jumbo v0, "unlock_set_or_change_profile"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 768
    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mUm:Landroid/os/UserManager;

    .line 769
    iget v2, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 768
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 770
    const/4 v0, 0x0

    return v0

    .line 772
    :cond_7
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 773
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    const-string/jumbo v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    .line 775
    const v3, 0x7f0e062a

    .line 776
    const/16 v4, 0x7f

    move-object v0, p0

    move-object v1, p0

    .line 774
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/SecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 777
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_8
    const-string/jumbo v0, "trust_agent"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 779
    new-instance v7, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v7, v0, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 780
    .local v7, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 782
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/16 v1, 0x7e

    .line 781
    invoke-virtual {v7, v1, v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v6

    .line 783
    .local v6, "confirmationLaunched":Z
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 786
    iput-object v5, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 790
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

    .line 705
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 708
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    .line 710
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mVisiblePatternProfile:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 712
    iget v4, p0, Lcom/android/settings_ex/SecuritySettings;->mProfileChallengeUserId:I

    .line 711
    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 715
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/SecuritySettings;->updateUnificationPreference()V

    .line 717
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 718
    iget-object v3, p0, Lcom/android/settings_ex/SecuritySettings;->mShowPassword:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 719
    const-string/jumbo v4, "show_password"

    .line 718
    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 722
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Lcom/android/settings_exlib/RestrictedPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mResetCredentials:Lcom/android/settings_exlib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settings_exlib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 704
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 718
    goto :goto_0

    .line 723
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
    .line 692
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 693
    iget-object v0, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 694
    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/android/settings_ex/SecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 697
    :cond_0
    const-string/jumbo v0, "GotoEnrollClick"

    iget-boolean v1, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoEnrollClick:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 698
    const-string/jumbo v0, "GotoAppLockerClick"

    iget-boolean v1, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoAppLockerClick:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 699
    const-string/jumbo v0, "GotoQuickPayClick"

    iget-boolean v1, p0, Lcom/android/settings_ex/SecuritySettings;->mGotoQuickPayClick:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 691
    return-void
.end method
