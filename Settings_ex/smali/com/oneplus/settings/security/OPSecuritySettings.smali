.class public Lcom/oneplus/settings/security/OPSecuritySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPSecuritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/security/OPSecuritySettings$SecuritySearchIndexProvider;,
        Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;
    }
.end annotation


# static fields
.field private static final ADD_FINGERPRINT_REQUEST:I = 0xa

.field private static final CHANGE_TRUST_AGENT_SETTINGS:I = 0x7e

.field private static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x66

.field private static final CONFIRM_REQUEST:I = 0x65

.field private static final KEY_ADVANCED_SECURITY:Ljava/lang/String; = "advanced_security"

.field private static final KEY_CHANGE_MOBILE_PASSWORD:Ljava/lang/String; = "change_mobile_password"

.field private static final KEY_CREDENTIALS_INSTALL:Ljava/lang/String; = "credentials_install"

.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_CREDENTIAL_STORAGE_TYPE:Ljava/lang/String; = "credential_storage_type"

.field private static final KEY_DEVICE_ADMIN_CATEGORY:Ljava/lang/String; = "device_admin_category"

.field private static final KEY_DISCARD_MOBILE_PASSWORD:Ljava/lang/String; = "discard_mobile_password"

.field private static final KEY_FINGERPRINT_ADD:Ljava/lang/String; = "key_fingerprint_add"

.field private static final KEY_FINGERPRINT_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String; = "fingerprint_check_oneplus_account"

.field private static final KEY_FINGERPRINT_ENABLE_KEYGUARD_TOGGLE:Ljava/lang/String; = "fingerprint_enable_keyguard_toggle"

.field private static final KEY_FINGERPRINT_ITEM_PREFIX:Ljava/lang/String; = "key_fingerprint_item"

.field private static final KEY_FINGERPRINT_SETTINGS:Ljava/lang/String; = "fingerprint_settings"

.field private static final KEY_FINGERPRINT_UNLOCK_MOBILE:Ljava/lang/String; = "fingerprint_unlock_mobile"

.field private static final KEY_LAUNCHED_CONFIRM:Ljava/lang/String; = "launched_confirm"

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

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "set_mobile_password"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final MSG_FINGER_AUTH_ERROR:I = 0x3eb

.field private static final MSG_FINGER_AUTH_FAIL:I = 0x3ea

.field private static final MSG_FINGER_AUTH_HELP:I = 0x3ec

.field private static final MSG_FINGER_AUTH_SUCCESS:I = 0x3e9

.field private static final MSG_REFRESH_FINGERPRINT_TEMPLATES:I = 0x3e8

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
.field private isSupportFinger:Z

.field private mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private final mAuthCallbackHandler:Landroid/os/Handler;

.field private mChallenge:J

.field private mChangeMobilePasswordPreference:Landroid/preference/Preference;

.field private mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDiscardMobilePasswordPreference:Landroid/preference/Preference;

.field private mFingerprintCancel:Landroid/os/CancellationSignal;

.field private mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintUnlockMobile:Landroid/preference/SwitchPreference;

.field private mFingerprint_list_category:Landroid/preference/PreferenceCategory;

.field private mFingerprint_pwd_category:Landroid/preference/PreferenceCategory;

.field public mGotoEnrollClick:Z

.field private mInFingerprintLockout:Z

.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLaunchedConfirm:Z

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

.field private mOwnerInfoPref:Landroid/preference/Preference;

.field private mPowerButtonInstantlyLocks:Landroid/preference/SwitchPreference;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mSetMobilePasswordPreference:Landroid/preference/Preference;

.field private mShowPassword:Landroid/preference/SwitchPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mToken:[B

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mVisiblePattern:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/settings/security/OPSecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    .line 134
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

    sput-object v0, Lcom/oneplus/settings/security/OPSecuritySettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    .line 142
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    .line 1131
    new-instance v0, Lcom/oneplus/settings/security/OPSecuritySettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/security/OPSecuritySettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/oneplus/settings/security/OPSecuritySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 191
    iput-boolean v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->isSupportFinger:Z

    .line 192
    iput-boolean v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mGotoEnrollClick:Z

    .line 510
    new-instance v0, Lcom/oneplus/settings/security/OPSecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/security/OPSecuritySettings$2;-><init>(Lcom/oneplus/settings/security/OPSecuritySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mAuthCallbackHandler:Landroid/os/Handler;

    .line 537
    new-instance v0, Lcom/oneplus/settings/security/OPSecuritySettings$3;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/security/OPSecuritySettings$3;-><init>(Lcom/oneplus/settings/security/OPSecuritySettings;)V

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mAuthCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 1133
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/security/OPSecuritySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/security/OPSecuritySettings;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->updateAddPreference()V

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/settings/security/OPSecuritySettings;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/security/OPSecuritySettings;
    .param p1, "x1"    # Landroid/os/CancellationSignal;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/security/OPSecuritySettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/security/OPSecuritySettings;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mAuthCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic access$400(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageManager;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "x2"    # Landroid/app/admin/DevicePolicyManager;

    .prologue
    .line 95
    invoke-static {p0, p1, p2}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 6
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    .line 474
    iget-object v5, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 475
    iget-object v5, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v3

    .line 476
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 477
    .local v0, "fingerprintCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 478
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 479
    .local v2, "item":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v4, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;-><init>(Landroid/content/Context;)V

    .line 480
    .local v4, "pref":Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v5}, Lcom/oneplus/settings/security/OPSecuritySettings;->genKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;->setKey(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v2}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {v4, v2}, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;->setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 483
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;->setPersistent(Z)V

    .line 484
    iget-object v5, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 485
    invoke-virtual {v4, p0}, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 477
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v2    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v4    # "pref":Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->updateAddPreference()V

    .line 494
    return-void
.end method

.method private addOrdeleteMobilePasswordPreference(Z)V
    .locals 2
    .param p1, "isAdd"    # Z

    .prologue
    .line 439
    if-eqz p1, :cond_3

    .line 440
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "set_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mSetMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "change_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "discard_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mDiscardMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 471
    :cond_2
    :goto_0
    return-void

    .line 456
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "set_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 458
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mSetMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 461
    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "change_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_5

    .line 463
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 466
    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    const-string v1, "discard_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V
    .locals 10
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v9, 0x0

    .line 693
    iget-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    .line 694
    .local v2, "hasSecurity":Z
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v7, v8}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActiveTrustAgents(Landroid/content/pm/PackageManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 696
    .local v1, "agents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 697
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    .line 698
    .local v0, "agent":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 700
    .local v5, "trustAgentPreference":Landroid/preference/Preference;
    const-string v6, "trust_agent"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 701
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 704
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v4, "intent":Landroid/content/Intent;
    iget-object v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 706
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 709
    invoke-virtual {p1, v5}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 711
    iget-boolean v6, v0, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    if-eqz v6, :cond_1

    .line 712
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 713
    const v6, 0x7f0c0d1d

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 696
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 715
    :cond_1
    if-nez v2, :cond_0

    .line 716
    invoke-virtual {v5, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 717
    const v6, 0x7f0c0465

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 721
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

    .line 326
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 327
    .local v2, "root":Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_0

    .line 328
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 330
    :cond_0
    const v6, 0x7f08004f

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPSecuritySettings;->addPreferencesFromResource(I)V

    .line 331
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 332
    const-string v6, "mobile_password_settings"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    .line 334
    const-string v6, "set_mobile_password"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mSetMobilePasswordPreference:Landroid/preference/Preference;

    .line 336
    const-string v6, "change_mobile_password"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    .line 338
    const-string v6, "discard_mobile_password"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mDiscardMobilePasswordPreference:Landroid/preference/Preference;

    .line 341
    iget-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mDiscardMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 343
    iget-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 345
    iget-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mMobilePasswordCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v6}, Lcom/oneplus/settings/security/OPSecuritySettings;->addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V

    .line 346
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, v6, v8}, Lcom/oneplus/settings/security/OPSecuritySettings;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    .line 348
    const-string v6, "fingerprint_unlock_mobile"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintUnlockMobile:Landroid/preference/SwitchPreference;

    .line 350
    const-string v6, "fingerprint_check_oneplus_account"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreference;

    iput-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

    .line 353
    iget-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintUnlockMobile:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 354
    iget-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 356
    const-string v6, "fingerprint_settings"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprint_pwd_category:Landroid/preference/PreferenceCategory;

    .line 358
    iget-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprint_pwd_category:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    iget-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprint_pwd_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    const-string v6, "key_fingerprint_list"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    .line 364
    invoke-direct {p0, v2}, Lcom/oneplus/settings/security/OPSecuritySettings;->addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V

    .line 371
    sget v6, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mIsPrimary:Z

    .line 373
    const-string v6, "owner_info_settings"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    .line 374
    iget-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    if-eqz v6, :cond_1

    .line 375
    iget-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    new-instance v8, Lcom/oneplus/settings/security/OPSecuritySettings$1;

    invoke-direct {v8, p0}, Lcom/oneplus/settings/security/OPSecuritySettings$1;-><init>(Lcom/oneplus/settings/security/OPSecuritySettings;)V

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 396
    :cond_1
    const-string v6, "security_category"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 398
    .local v3, "securityCategory":Landroid/preference/PreferenceGroup;
    if-eqz v3, :cond_2

    .line 399
    invoke-direct {p0, v3}, Lcom/oneplus/settings/security/OPSecuritySettings;->maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;)V

    .line 400
    invoke-direct {p0, v3}, Lcom/oneplus/settings/security/OPSecuritySettings;->addTrustAgentSettings(Landroid/preference/PreferenceGroup;)V

    .line 406
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 407
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v8, "carrier_config"

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 409
    .local v1, "cfgMgr":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 410
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-boolean v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mIsPrimary:Z

    if-eqz v6, :cond_3

    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->isSimIccReady()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "hide_sim_lock_settings_bool"

    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 413
    :cond_3
    const-string v6, "sim_lock"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 419
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "lock_to_app_enabled"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    .line 421
    const-string v6, "screen_pinning_settings"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0cd2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 426
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 428
    .local v5, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mKeyStore:Landroid/security/KeyStore;

    .line 430
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->isSimReady()Z

    move-result v6

    if-nez v6, :cond_5

    .line 431
    const-string v6, "signle_sim_lock"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 432
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    const-string v7, "key_fingerprint_add"

    invoke-virtual {p0, v7}, Lcom/oneplus/settings/security/OPSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 434
    return-object v2

    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v1    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .end local v3    # "securityCategory":Landroid/preference/PreferenceGroup;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    .end local v5    # "um":Landroid/os/UserManager;
    :cond_6
    move v6, v7

    .line 371
    goto/16 :goto_0

    .line 416
    .restart local v0    # "b":Landroid/os/PersistableBundle;
    .restart local v1    # "cfgMgr":Landroid/telephony/CarrierConfigManager;
    .restart local v3    # "securityCategory":Landroid/preference/PreferenceGroup;
    .restart local v4    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    const-string v6, "sim_lock"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->isSimReady()Z

    move-result v8

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 417
    const-string v6, "sim_lock"

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private disableUnusableTimeouts(J)V
    .locals 11
    .param p1, "maxTimeout"    # J

    .prologue
    .line 904
    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 905
    .local v0, "entries":[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 906
    .local v7, "values":[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v2, "revisedEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v3, "revisedValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    .line 909
    aget-object v8, v7, v1

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 910
    .local v4, "timeout":J
    cmp-long v8, v4, p1

    if-gtz v8, :cond_0

    .line 911
    aget-object v8, v0, v1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    aget-object v8, v7, v1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
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

    .line 917
    :cond_2
    iget-object v9, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 919
    iget-object v9, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 921
    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 922
    .local v6, "userPreference":I
    int-to-long v8, v6

    cmp-long v8, v8, p1

    if-gtz v8, :cond_3

    .line 923
    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 932
    .end local v6    # "userPreference":I
    :cond_3
    iget-object v9, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v8}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 933
    return-void

    .line 932
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 765
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 766
    .local v5, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;>;"
    sget-object v8, Lcom/oneplus/settings/security/OPSecuritySettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v9, 0x80

    invoke-virtual {p0, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 768
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget v8, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    invoke-virtual {p1, v8}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v1

    .line 771
    .local v1, "enabledTrustAgents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p2, v10}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_1

    move v0, v7

    .line 773
    .local v0, "disableTrustAgents":Z
    :goto_0
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 774
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 775
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 776
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_2

    .line 774
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 771
    .end local v0    # "disableTrustAgents":Z
    .end local v2    # "i":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 778
    .restart local v0    # "disableTrustAgents":Z
    .restart local v2    # "i":I
    .restart local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static {v3, p0}, Lcom/android/settings_ex/TrustAgentUtils;->checkProvidePermission(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 780
    invoke-static {p0, v3}, Lcom/android/settings_ex/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v6

    .line 782
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

    .line 787
    if-eqz v0, :cond_3

    invoke-static {v3}, Lcom/android/settings_ex/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {p2, v10, v8}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_3

    .line 790
    iput-boolean v7, v6, Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;->disabledByAdministrator:Z

    .line 792
    :cond_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    .end local v2    # "i":I
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "trustAgentComponentInfo":Lcom/android/settings_ex/TrustAgentUtils$TrustAgentComponentInfo;
    :cond_4
    return-object v5
.end method

.method private getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "resid":I
    sget v1, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 236
    sget v1, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    invoke-direct {p0, v3}, Lcom/oneplus/settings/security/OPSecuritySettings;->addOrdeleteMobilePasswordPreference(Z)V

    .line 242
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mSetMobilePasswordPreference:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mSetMobilePasswordPreference:Landroid/preference/Preference;

    const v2, 0x7f0c0115

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 287
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 253
    :cond_1
    invoke-direct {p0, v2}, Lcom/oneplus/settings/security/OPSecuritySettings;->addOrdeleteMobilePasswordPreference(Z)V

    .line 258
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    const v2, 0x7f0c0116

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 263
    :cond_2
    sget v1, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    invoke-virtual {p2, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 283
    :sswitch_1
    invoke-direct {p0, v3}, Lcom/oneplus/settings/security/OPSecuritySettings;->addOrdeleteMobilePasswordPreference(Z)V

    goto :goto_0

    .line 266
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/oneplus/settings/security/OPSecuritySettings;->addOrdeleteMobilePasswordPreference(Z)V

    .line 267
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    const v2, 0x7f0c043c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 273
    :sswitch_3
    invoke-direct {p0, v2}, Lcom/oneplus/settings/security/OPSecuritySettings;->addOrdeleteMobilePasswordPreference(Z)V

    .line 274
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    const v2, 0x7f0c0118

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 263
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 801
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

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
    .line 727
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 728
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 731
    .local v2, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_1

    .line 732
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

    .line 733
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 734
    const/4 v4, 0x1

    .line 739
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

    .line 747
    const/4 v1, 0x0

    .line 748
    .local v1, "simState":I
    iget-object v5, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 750
    .local v3, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_1

    .line 751
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

    .line 752
    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 754
    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    .line 760
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private launchChooseOrConfirmLock()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 579
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 581
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 582
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/16 v2, 0x65

    const v3, 0x7f0c0132

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/security/OPSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-wide v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChallenge:J

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 585
    const-string v2, "com.android.settings"

    const-class v3, Lcom/android/settings_ex/ChooseLockGeneric;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v2, "minimum_quality"

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 588
    const-string v2, "hide_disabled_prefs"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 590
    const-string v2, "has_challenge"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 591
    const-string v2, "challenge"

    iget-wide v4, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChallenge:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 592
    const/16 v2, 0x66

    invoke-virtual {p0, v0, v2}, Lcom/oneplus/settings/security/OPSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 594
    :cond_0
    return-void
.end method

.method private maybeAddFingerprintPreference(Landroid/preference/PreferenceGroup;)V
    .locals 11
    .param p1, "securityCategory"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v6, 0x0

    .line 664
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "fingerprint"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 666
    .local v3, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v7

    if-nez v7, :cond_0

    .line 667
    const-string v6, "SecuritySettings"

    const-string v7, "No fingerprint hardware detected!!"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :goto_0
    return-void

    .line 670
    :cond_0
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 672
    .local v2, "fingerprintPreference":Landroid/preference/Preference;
    const-string v7, "fingerprint_settings"

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 673
    const v7, 0x7f0c03e7

    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setTitle(I)V

    .line 675
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 676
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v5

    .line 677
    .local v5, "items":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 679
    .local v1, "fingerprintCount":I
    :goto_1
    if-lez v1, :cond_2

    .line 680
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getResources()Landroid/content/res/Resources;

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

    .line 683
    const-class v6, Lcom/android/settings_ex/fingerprint/FingerprintSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "clazz":Ljava/lang/String;
    :goto_2
    const-string v6, "com.android.settings"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 689
    invoke-virtual {p1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .end local v0    # "clazz":Ljava/lang/String;
    .end local v1    # "fingerprintCount":I
    :cond_1
    move v1, v6

    .line 677
    goto :goto_1

    .line 685
    .restart local v1    # "fingerprintCount":I
    :cond_2
    const-class v6, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/String;
    goto :goto_2
.end method

.method private retryFingerprint()V
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mInFingerprintLockout:Z

    if-nez v0, :cond_0

    .line 498
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintCancel:Landroid/os/CancellationSignal;

    .line 502
    :cond_0
    return-void
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 808
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 814
    :goto_0
    return-void

    .line 812
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 854
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 856
    .local v2, "currentTimeout":J
    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 857
    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 858
    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 860
    .local v0, "adminTimeout":J
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 862
    .local v4, "displayTimeout":J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 867
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/oneplus/settings/security/OPSecuritySettings;->disableUnusableTimeouts(J)V

    .line 869
    :cond_0
    return-void

    .end local v0    # "adminTimeout":J
    .end local v4    # "displayTimeout":J
    :cond_1
    move-wide v0, v6

    .line 858
    goto :goto_0
.end method

.method private updateAddPreference()V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 564
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00a2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 566
    .local v1, "max":I
    iget-object v6, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, v1, :cond_0

    move v3, v4

    .line 567
    .local v3, "tooMany":Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c040d

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 569
    .local v2, "maxSummary":Ljava/lang/CharSequence;
    :goto_1
    const-string v6, "key_fingerprint_add"

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/security/OPSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 570
    .local v0, "addPreference":Landroid/preference/Preference;
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 572
    return-void

    .end local v0    # "addPreference":Landroid/preference/Preference;
    .end local v2    # "maxSummary":Ljava/lang/CharSequence;
    .end local v3    # "tooMany":Z
    :cond_0
    move v3, v5

    .line 566
    goto :goto_0

    .line 567
    .restart local v3    # "tooMany":Z
    :cond_1
    const-string v2, ""

    goto :goto_1

    .restart local v0    # "addPreference":Landroid/preference/Preference;
    .restart local v2    # "maxSummary":Ljava/lang/CharSequence;
    :cond_2
    move v4, v5

    .line 571
    goto :goto_2
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 14

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v9, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 875
    .local v2, "currentTimeout":J
    iget-object v9, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 876
    .local v1, "entries":[Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v9}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 877
    .local v8, "values":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 878
    .local v0, "best":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_1

    .line 879
    aget-object v9, v8, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 880
    .local v6, "timeout":J
    cmp-long v9, v2, v6

    if-ltz v9, :cond_0

    .line 881
    move v0, v4

    .line 878
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 885
    .end local v6    # "timeout":J
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string v10, "trust_agent"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 887
    .local v5, "preference":Landroid/preference/Preference;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 888
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

    .line 889
    iget-object v9, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0c03d4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {v5}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/settings/security/OPSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 901
    :goto_1
    return-void

    .line 893
    :cond_2
    iget-object v9, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

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

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/settings/security/OPSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 898
    :cond_3
    iget-object v9, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v10, 0x7f0c03d3

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aget-object v13, v1, v0

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/oneplus/settings/security/OPSecuritySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 818
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c06d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getResources()Landroid/content/res/Resources;

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

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 825
    return-void
.end method


# virtual methods
.method public checkIfNeedPassword()Z
    .locals 3

    .prologue
    .line 601
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 603
    .local v0, "passwordQuality":I
    sparse-switch v0, :sswitch_data_0

    .line 612
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 610
    :sswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 603
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
    .line 1124
    const v0, 0x7f0c0bd4

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0xfa

    return v0
.end method

.method public gotoEnrollFingerprint()V
    .locals 3

    .prologue
    .line 618
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 619
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings_ex/fingerprint/OPFingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 622
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/security/OPSecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 623
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v2, 0x65

    const/4 v1, -0x1

    .line 1042
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1043
    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    if-ne p1, v2, :cond_3

    .line 1045
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_3

    .line 1047
    :cond_1
    if-eqz p3, :cond_2

    .line 1048
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mToken:[B

    .line 1051
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mGotoEnrollClick:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mToken:[B

    if-eqz v0, :cond_3

    .line 1052
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->gotoEnrollFingerprint()V

    .line 1060
    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mToken:[B

    if-nez v0, :cond_4

    .line 1062
    if-ne p1, v2, :cond_4

    .line 1063
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1067
    :cond_4
    const/16 v0, 0x7e

    if-ne p1, v0, :cond_6

    if-ne p2, v1, :cond_6

    .line 1069
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 1070
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/security/OPSecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 1076
    :cond_5
    :goto_0
    return-void

    .line 1075
    :cond_6
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 829
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 830
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 831
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/settings/security/OPSecuritySettings;->setNonMarketAppsAllowed(Z)V

    .line 832
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 833
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 836
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 830
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 203
    if-eqz p1, :cond_0

    .line 204
    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mToken:[B

    .line 206
    const-string v0, "launched_confirm"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLaunchedConfirm:Z

    .line 209
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->isSupportFinger:Z

    .line 210
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 212
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 214
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 216
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 217
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 219
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChallenge:J

    .line 225
    if-eqz p1, :cond_1

    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    const-string v0, "trust_agent_click_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 231
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 840
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 841
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 844
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->postEnroll()I

    move-result v0

    .line 846
    .local v0, "result":I
    if-gez v0, :cond_1

    .line 847
    const-string v1, "SecuritySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postEnroll failed: result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    .end local v0    # "result":I
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 1080
    const/4 v3, 0x1

    .line 1081
    .local v3, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1082
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    .line 1084
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v5, "lock_after_timeout"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1085
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1087
    .local v4, "timeout":I
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_lock_after_timeout"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->updateLockAfterPreferenceSummary()V

    .line 1119
    .end local v4    # "timeout":I
    :cond_0
    :goto_1
    return v3

    .line 1091
    .restart local v4    # "timeout":I
    :catch_0
    move-exception v0

    .line 1092
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v5, "SecuritySettings"

    const-string v6, "could not persist lockAfter timeout setting"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1096
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "timeout":I
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const-string v5, "visiblepattern"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1097
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget v6, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_1

    .line 1099
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v5, "power_button_instantly_locks"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1100
    iget-object v5, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    sget v7, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    goto :goto_1

    .line 1102
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    const-string v5, "show_password"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1103
    invoke-virtual {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 1106
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sget v6, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v2, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePasswordEnabled(ZI)V

    goto :goto_1

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    move v5, v6

    .line 1103
    goto :goto_2

    .line 1108
    :cond_5
    const-string v5, "toggle_install_applications"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1109
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1110
    iget-object v5, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1111
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->warnAppInstallation()V

    .line 1114
    const/4 v3, 0x0

    goto :goto_1

    .line 1116
    :cond_6
    invoke-direct {p0, v6}, Lcom/oneplus/settings/security/OPSecuritySettings;->setNonMarketAppsAllowed(Z)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 19
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 990
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v18

    .line 991
    .local v18, "key":Ljava/lang/String;
    const-string v2, "key_fingerprint_add"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 992
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/oneplus/settings/security/OPSecuritySettings;->mGotoEnrollClick:Z

    .line 1034
    :cond_0
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 999
    :cond_1
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;

    if-eqz v2, :cond_2

    move-object/from16 v16, p2

    .line 1000
    check-cast v16, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;

    .line 1001
    .local v16, "fpref":Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;
    invoke-virtual/range {v16 .. v16}, Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v15

    .line 1002
    .local v15, "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1003
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v2, "fingerprint_parcelable"

    invoke-virtual {v7, v2, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1004
    const-string v4, "com.oneplus.settings.opfinger.OPFingerPrintEditFragments"

    const v5, 0x7f0c0100

    const/16 v6, 0x7b

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/settings/security/OPSecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1008
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v15    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v16    # "fpref":Lcom/oneplus/settings/security/OPSecuritySettings$FingerprintPreference;
    :cond_2
    const-string v2, "set_mobile_password"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1013
    const-string v10, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v11, 0x7f0c0428

    const/16 v12, 0x7b

    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lcom/oneplus/settings/security/OPSecuritySettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1018
    :cond_3
    const-string v2, "trust_agent"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1019
    new-instance v17, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v2, v1}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 1021
    .local v17, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/settings/security/OPSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    .line 1022
    const/16 v2, 0x7e

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v14

    .line 1024
    .local v14, "confirmationLaunched":Z
    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/security/OPSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oneplus/settings/security/OPSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/security/OPSecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 1028
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/oneplus/settings/security/OPSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1032
    .end local v14    # "confirmationLaunched":Z
    .end local v17    # "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    :cond_4
    invoke-super/range {p0 .. p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 950
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 955
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 956
    invoke-direct {p0}, Lcom/oneplus/settings/security/OPSecuritySettings;->retryFingerprint()V

    .line 976
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 937
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 938
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 940
    const-string v0, "launched_confirm"

    iget-boolean v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLaunchedConfirm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 942
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 943
    const-string v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 946
    :cond_0
    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    .prologue
    .line 979
    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 980
    iget-object v1, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mOwnerInfoPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/security/OPSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/oneplus/settings/security/OPSecuritySettings;->MY_USER_ID:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 985
    :cond_0
    return-void

    .line 980
    :cond_1
    const v0, 0x7f0c03da

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/security/OPSecuritySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
