.class public Lcom/android/settings_ex/FingerprintAndPWD;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "FingerprintAndPWD.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final ADD_FINGERPRINT_REQUEST:I = 0x7e

.field private static final CHECK_FINGER_END:I = 0x4

.field private static final CHECK_FINGER_START:I = 0x3

.field private static final CHECK_PASSWORD_COMFIRM_REQUEST:I = 0x67

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final ENABLE_ENCRYPTION_REQUEST:I = 0x66

.field private static final FALLBACK_REQUEST:I = 0x65

.field private static final KEY_ADD_FINGERPRINT_LIST:Ljava/lang/String; = "add_fingerprint_list"

.field private static final KEY_CHANGE_MOBILE_PASSWORD:Ljava/lang/String; = "change_mobile_password"

.field private static final KEY_DISCARD_MOBILE_PASSWORD:Ljava/lang/String; = "discard_mobile_password"

.field private static final KEY_FINGERPRINT_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String; = "fingerprint_check_oneplus_account"

.field private static final KEY_FINGERPRINT_UNLOCK_MOBILE:Ljava/lang/String; = "fingerprint_unlock_mobile"

.field private static final KEY_MOBILE_PASSWORD_CONTAINER:Ljava/lang/String; = "mobile_password_container"

.field private static final KEY_OPFINGER_PRINT_1:Ljava/lang/String; = "opfingerprint_1"

.field private static final KEY_OPFINGER_PRINT_2:Ljava/lang/String; = "opfingerprint_2"

.field private static final KEY_OPFINGER_PRINT_3:Ljava/lang/String; = "opfingerprint_3"

.field private static final KEY_OPFINGER_PRINT_4:Ljava/lang/String; = "opfingerprint_4"

.field private static final KEY_OPFINGER_PRINT_5:Ljava/lang/String; = "opfingerprint_5"

.field private static final KEY_PREFERENCE_DIVIDER:Ljava/lang/String; = "preference_divider_line"

.field private static final KEY_PREFERENCE_THIN_DIVIDER:Ljava/lang/String; = "preference_thin_divider_line"

.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock"

.field private static final KEY_SIM_MANAGE_SETTINGS:Ljava/lang/String; = "sim_lock_settings"

.field private static final KEY_SINGLE_SIM_LOCK:Ljava/lang/String; = "signle_sim_lock"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "set_mobile_password"

.field private static OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String; = null

.field private static OEM_FINGER_LOCKSCREEN:Ljava/lang/String; = null

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final SWITCH_NEED_INPUT_FINGERPRINT:I = 0x7d

.field private static final SWITCH_NEED_PASSWORD:I = 0x7c

.field private static final TAG:Ljava/lang/String; = "FingerprintAndPWD"

.field private static mLastFingerId:I


# instance fields
.field curTime:J

.field private helper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private isSupportFinger:Z

.field private isSupportMultiSim:Z

.field private mChangeMobilePasswordPreference:Landroid/preference/Preference;

.field private mClickFingerprintCheckOneplusAccount:Z

.field private mClickFingerprintUnlockMobile:Z

.field private mContext:Landroid/content/Context;

.field private mDiscardMobilePasswordPreference:Landroid/preference/Preference;

.field private mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

.field private mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

.field private mFingerprintUnlockMobile:Landroid/preference/SwitchPreference;

.field private mFingerprint_list_category:Landroid/preference/PreferenceCategory;

.field private mFingerprint_pwd_category:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

.field private mIsPrimary:Z

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastIdentifiedTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

.field private mOPFingerPrintDBManager:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

.field private mOPFingerPrintEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mOPFingerPrint_1:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

.field private mOPFingerPrint_2:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

.field private mOPFingerPrint_3:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

.field private mOPFingerPrint_4:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

.field private mOPFingerPrint_5:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

.field private mOnActivityResultAfterAddFinger:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mService:Lcom/oem/os/IOemExService;

.field private mSetMobilePasswordPreference:Landroid/preference/Preference;

.field private mShouldOpenFingerUnlock:Z

.field private mSim_lock_category:Landroid/preference/PreferenceCategory;

.field private mSingleSim_lock_category:Landroid/preference/PreferenceCategory;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockUseRunnable:Ljava/lang/Runnable;

.field private mobile_password_category:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-string v0, "oem_finger_lockscreen"

    sput-object v0, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    .line 155
    const-string v0, "oem_finger_check_oneplus_account"

    sput-object v0, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    .line 432
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/FingerprintAndPWD;->mLastFingerId:I

    .line 1166
    new-instance v0, Lcom/android/settings_ex/FingerprintAndPWD$7;

    invoke-direct {v0}, Lcom/android/settings_ex/FingerprintAndPWD$7;-><init>()V

    sput-object v0, Lcom/android/settings_ex/FingerprintAndPWD;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 102
    iput-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintUnlockMobile:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintCheckOneplusAccount:Z

    .line 113
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mKeyStore:Landroid/security/KeyStore;

    .line 127
    iput-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 143
    iput-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSubInfoList:Ljava/util/List;

    .line 148
    iput-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->isSupportFinger:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mShouldOpenFingerUnlock:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOnActivityResultAfterAddFinger:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->isSupportMultiSim:Z

    .line 160
    new-instance v0, Lcom/android/settings_ex/FingerprintAndPWD$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/FingerprintAndPWD$1;-><init>(Lcom/android/settings_ex/FingerprintAndPWD;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mHandler:Landroid/os/Handler;

    .line 433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLastIdentifiedTime:J

    .line 435
    new-instance v0, Lcom/android/settings_ex/FingerprintAndPWD$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/FingerprintAndPWD$4;-><init>(Lcom/android/settings_ex/FingerprintAndPWD;)V

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    .line 469
    new-instance v0, Lcom/android/settings_ex/FingerprintAndPWD$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/FingerprintAndPWD$5;-><init>(Lcom/android/settings_ex/FingerprintAndPWD;)V

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/FingerprintAndPWD;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/FingerprintAndPWD;Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;)Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;
    .param p1, "x1"    # Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintDBManager:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/FingerprintAndPWD;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/FingerprintAndPWD;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/FingerprintAndPWD;)Lcom/oneplus/settings/opfinger/OPFingerDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings_ex/FingerprintAndPWD;Lcom/oneplus/settings/opfinger/OPFingerDataManager;)Lcom/oneplus/settings/opfinger/OPFingerDataManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;
    .param p1, "x1"    # Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/FingerprintAndPWD;)Lcom/oneplus/fingerprints/service/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings_ex/FingerprintAndPWD;Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;
    .param p1, "x1"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/FingerprintAndPWD;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOnActivityResultAfterAddFinger:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/FingerprintAndPWD;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOnActivityResultAfterAddFinger:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/FingerprintAndPWD;)Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/FingerprintAndPWD;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLastIdentifiedTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/settings_ex/FingerprintAndPWD;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;
    .param p1, "x1"    # J

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLastIdentifiedTime:J

    return-wide p1
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 70
    sput p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLastFingerId:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/FingerprintAndPWD;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/FingerprintAndPWD;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 349
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 350
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/FingerprintAndPWD;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 351
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "FingerprintAndPWD"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 352
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 354
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private addOrdeleteMobilePasswordPreference(Z)V
    .locals 2
    .param p1, "isAdd"    # Z

    .prologue
    .line 981
    if-eqz p1, :cond_3

    .line 982
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    const-string v1, "set_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSetMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 987
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    const-string v1, "change_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 989
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 992
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    const-string v1, "discard_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mDiscardMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1020
    :cond_2
    :goto_0
    return-void

    .line 998
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    const-string v1, "set_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1000
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSetMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1003
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    const-string v1, "change_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1005
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1008
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    const-string v1, "discard_mobile_password"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private checkShouldOpenFingerUnlock()V
    .locals 1

    .prologue
    .line 328
    invoke-direct {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getFingerCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mShouldOpenFingerUnlock:Z

    .line 333
    :goto_0
    return-void

    .line 331
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mShouldOpenFingerUnlock:Z

    goto :goto_0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 12

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 541
    .local v8, "root":Landroid/preference/PreferenceScreen;
    if-eqz v8, :cond_0

    .line 542
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 546
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_0
    iput-boolean v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mIsPrimary:Z

    .line 547
    const v10, 0x7f060026

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/FingerprintAndPWD;->addPreferencesFromResource(I)V

    .line 548
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 554
    iget-boolean v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->isSupportFinger:Z

    if-nez v10, :cond_1

    .line 555
    const-string v10, "preference__finger_divider_line"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 556
    const-string v10, "preference__finger_divider_line"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 561
    :cond_1
    const-string v10, "mobile_password_settings"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    .line 563
    const-string v10, "set_mobile_password"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSetMobilePasswordPreference:Landroid/preference/Preference;

    .line 565
    const-string v10, "change_mobile_password"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    .line 567
    const-string v10, "discard_mobile_password"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mDiscardMobilePasswordPreference:Landroid/preference/Preference;

    .line 569
    const-string v10, "fingerprint_unlock_mobile"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintUnlockMobile:Landroid/preference/SwitchPreference;

    .line 571
    const-string v10, "fingerprint_check_oneplus_account"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/SwitchPreference;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

    .line 573
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintUnlockMobile:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 574
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 576
    invoke-direct {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getFingerCount()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/settings_ex/FingerprintAndPWD;->updateSwichState(I)V

    .line 577
    const-string v10, "sim_lock"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSim_lock_category:Landroid/preference/PreferenceCategory;

    .line 579
    const-string v10, "signle_sim_lock"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSingleSim_lock_category:Landroid/preference/PreferenceCategory;

    .line 586
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mDiscardMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 589
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mobile_password_category:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 596
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/FingerprintAndPWD;->getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I

    .line 598
    const-string v10, "fingerprint_settings"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_pwd_category:Landroid/preference/PreferenceCategory;

    .line 601
    const-string v10, "key_fingerprint_list"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceCategory;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    .line 603
    const-string v10, "opfingerprint_1"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_1:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    .line 605
    const-string v10, "opfingerprint_2"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_2:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    .line 607
    const-string v10, "opfingerprint_3"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_3:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    .line 609
    const-string v10, "opfingerprint_4"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_4:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    .line 611
    const-string v10, "opfingerprint_5"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    iput-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_5:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    .line 616
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    .line 617
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    .line 618
    .local v6, "numPhones":I
    const/4 v0, 0x1

    .line 619
    .local v0, "disableLock":Z
    const/4 v7, 0x1

    .line 620
    .local v7, "removeLock":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_4

    .line 622
    invoke-virtual {v9, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 624
    const/4 v7, 0x0

    .line 625
    invoke-virtual {v9, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    invoke-virtual {v9, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_2

    .line 628
    const/4 v0, 0x0

    .line 620
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 546
    .end local v0    # "disableLock":Z
    .end local v1    # "i":I
    .end local v6    # "numPhones":I
    .end local v7    # "removeLock":Z
    .end local v9    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 633
    .restart local v0    # "disableLock":Z
    .restart local v1    # "i":I
    .restart local v6    # "numPhones":I
    .restart local v7    # "removeLock":Z
    .restart local v9    # "tm":Landroid/telephony/TelephonyManager;
    :cond_4
    if-eqz v7, :cond_5

    .line 634
    const-string v10, "preference_divider_line"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 638
    :cond_5
    iget-boolean v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mIsPrimary:Z

    goto :goto_xs_0

    if-eqz v7, :cond_c

    .line 640
    :goto_xs_0
    const-string v10, "sim_lock"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 650
    :goto_2
    iget-boolean v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->isSupportMultiSim:Z

    if-nez v10, :cond_e

    .line 651
    const-string v10, "preference_divider_line"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_7

    const-string v10, "sim_lock"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 653
    const-string v10, "sim_lock"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 659
    :cond_7
    :goto_3
    const-string v10, "signle_sim_lock"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_8

    if-eqz v7, :cond_8

    .line 662
    const-string v10, "signle_sim_lock"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 664
    :cond_8
    const-string v10, "sim_lock"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 665
    const/4 v10, 0x1

    if-le v6, v10, :cond_f

    .line 666
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSim_lock_category:Landroid/preference/PreferenceCategory;

    const-string v11, "sim1"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_9

    .line 668
    new-instance v4, Lcom/android/settings_ex/ui/OPSimPinPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;-><init>(Landroid/content/Context;)V

    .line 670
    .local v4, "mSim_one":Lcom/android/settings_ex/ui/OPSimPinPreference;
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings_ex/FingerprintAndPWD;->getSimName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setPreferenceTitle(Ljava/lang/String;)V

    .line 671
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/settings_ex/FingerprintAndPWD;->getSimNumber(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setPreferenceSummary(Ljava/lang/String;)V

    .line 672
    const v10, 0x7f0200d9

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setImage(I)V

    .line 673
    const-string v10, "sim1"

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setKey(Ljava/lang/String;)V

    .line 674
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 675
    .local v2, "intent":Landroid/content/Intent;
    const-string v10, "com.android.settings_ex"

    const-string v11, "com.android.settings_ex.IccLockSettings"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    const-string v10, "title"

    invoke-virtual {v4}, Lcom/android/settings_ex/ui/OPSimPinPreference;->getPreferenceTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    const-string v10, "phoneId"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    invoke-virtual {v4, v2}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setIntent(Landroid/content/Intent;)V

    .line 680
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSim_lock_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 683
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "mSim_one":Lcom/android/settings_ex/ui/OPSimPinPreference;
    :cond_9
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSim_lock_category:Landroid/preference/PreferenceCategory;

    const-string v11, "sim2"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_a

    .line 685
    new-instance v5, Lcom/android/settings_ex/ui/OPSimPinPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;-><init>(Landroid/content/Context;)V

    .line 687
    .local v5, "mSim_two":Lcom/android/settings_ex/ui/OPSimPinPreference;
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings_ex/FingerprintAndPWD;->getSimName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setPreferenceTitle(Ljava/lang/String;)V

    .line 688
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings_ex/FingerprintAndPWD;->getSimNumber(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setPreferenceSummary(Ljava/lang/String;)V

    .line 689
    const v10, 0x7f0200da

    invoke-virtual {v5, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setImage(I)V

    .line 690
    const-string v10, "sim2"

    invoke-virtual {v5, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setKey(Ljava/lang/String;)V

    .line 691
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 692
    .local v3, "intent1":Landroid/content/Intent;
    const-string v10, "com.android.settings_ex"

    const-string v11, "com.android.settings_ex.IccLockSettings"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    const-string v10, "title"

    invoke-virtual {v5}, Lcom/android/settings_ex/ui/OPSimPinPreference;->getPreferenceTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string v10, "phoneId"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    invoke-virtual {v5, v3}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setIntent(Landroid/content/Intent;)V

    .line 697
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSim_lock_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 735
    .end local v3    # "intent1":Landroid/content/Intent;
    .end local v5    # "mSim_two":Lcom/android/settings_ex/ui/OPSimPinPreference;
    :cond_a
    :goto_4
    iget-boolean v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->isSupportFinger:Z

    if-nez v10, :cond_b

    .line 736
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_pwd_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 737
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 738
    const-string v10, "preference_finger_divider_line"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/FingerprintAndPWD;->removePreference(Ljava/lang/String;)V

    .line 739
    const-string v10, "preference_thin_finger_divider_line"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/FingerprintAndPWD;->removePreference(Ljava/lang/String;)V

    .line 740
    const-string v10, "preference_finger_list_divider_line"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/FingerprintAndPWD;->removePreference(Ljava/lang/String;)V

    .line 741
    const-string v10, "preference_thin_finger_list_divider_line"

    invoke-virtual {p0, v10}, Lcom/android/settings_ex/FingerprintAndPWD;->removePreference(Ljava/lang/String;)V

    .line 747
    :cond_b
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_pwd_category:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 749
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_1:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 750
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_2:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 751
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_3:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 752
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_4:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 753
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    iget-object v11, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_5:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 754
    invoke-direct {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->initOPFingerData()V

    .line 755
    return-object v8

    .line 643
    :cond_c
    if-eqz v0, :cond_d

    .line 644
    const-string v10, "sim_lock"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 646
    :cond_d
    const-string v10, "preference_divider_line"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 647
    const-string v10, "preference_thin_divider_line"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 656
    :cond_e
    const-string v10, "signle_sim_lock"

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 700
    :cond_f
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 701
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSim_lock_category:Landroid/preference/PreferenceCategory;

    const-string v11, "sim1"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_a

    .line 702
    new-instance v4, Lcom/android/settings_ex/ui/OPSimPinPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;-><init>(Landroid/content/Context;)V

    .line 704
    .restart local v4    # "mSim_one":Lcom/android/settings_ex/ui/OPSimPinPreference;
    const-string v10, "CMCC"

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setPreferenceTitle(Ljava/lang/String;)V

    .line 705
    const-string v10, "18877433555"

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setPreferenceSummary(Ljava/lang/String;)V

    .line 706
    const v10, 0x7f0200d9

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setImage(I)V

    .line 707
    const-string v10, "sim1"

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setKey(Ljava/lang/String;)V

    .line 708
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 709
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v10, "com.android.settings_ex"

    const-string v11, "com.android.settings_ex.IccLockSettings"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v10, "title"

    invoke-virtual {v4}, Lcom/android/settings_ex/ui/OPSimPinPreference;->getPreferenceTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const-string v10, "phoneId"

    const/4 v11, 0x0

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 713
    invoke-virtual {v4, v2}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setIntent(Landroid/content/Intent;)V

    .line 714
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSim_lock_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 716
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "mSim_one":Lcom/android/settings_ex/ui/OPSimPinPreference;
    :cond_10
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 717
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSim_lock_category:Landroid/preference/PreferenceCategory;

    const-string v11, "sim2"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    if-nez v10, :cond_a

    .line 718
    new-instance v5, Lcom/android/settings_ex/ui/OPSimPinPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v5, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;-><init>(Landroid/content/Context;)V

    .line 720
    .restart local v5    # "mSim_two":Lcom/android/settings_ex/ui/OPSimPinPreference;
    const-string v10, "CMCC"

    invoke-virtual {v5, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setPreferenceTitle(Ljava/lang/String;)V

    .line 721
    const-string v10, "18877433555"

    invoke-virtual {v5, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setPreferenceSummary(Ljava/lang/String;)V

    .line 722
    const v10, 0x7f0200da

    invoke-virtual {v5, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setImage(I)V

    .line 723
    const-string v10, "sim1"

    invoke-virtual {v5, v10}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setKey(Ljava/lang/String;)V

    .line 724
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 725
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v10, "com.android.settings_ex"

    const-string v11, "com.android.settings_ex.IccLockSettings"

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string v10, "title"

    invoke-virtual {v5}, Lcom/android/settings_ex/ui/OPSimPinPreference;->getPreferenceTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v10, "phoneId"

    const/4 v11, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    invoke-virtual {v5, v2}, Lcom/android/settings_ex/ui/OPSimPinPreference;->setIntent(Landroid/content/Intent;)V

    .line 730
    iget-object v10, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSim_lock_category:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4
.end method

.method private findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 1127
    iget-object v3, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSubInfoList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1128
    iget-object v3, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1130
    .local v0, "availableSubInfoLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1131
    iget-object v3, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSubInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 1132
    .local v2, "sir":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1139
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v2

    .line 1130
    .restart local v0    # "availableSubInfoLength":I
    .restart local v1    # "i":I
    .restart local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1139
    .end local v0    # "availableSubInfoLength":I
    .end local v1    # "i":I
    .end local v2    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getFingerCount()I
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerCount()I

    move-result v0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getResIdForLockUnlockScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 809
    const/4 v1, 0x0

    .line 810
    .local v1, "resid":I
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v6

    if-nez v6, :cond_3

    .line 812
    const-string v6, "user"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 814
    .local v0, "mUm":Landroid/os/UserManager;
    invoke-virtual {v0, v4}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    .line 815
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_1

    move v2, v4

    .line 816
    .local v2, "singleUser":Z
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 818
    invoke-direct {p0, v4}, Lcom/android/settings_ex/FingerprintAndPWD;->addOrdeleteMobilePasswordPreference(Z)V

    .line 822
    iget-object v4, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSetMobilePasswordPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 823
    iget-object v4, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSetMobilePasswordPreference:Landroid/preference/Preference;

    const v5, 0x7f09009d

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 870
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_0
    :goto_1
    :sswitch_0
    return v1

    .restart local v0    # "mUm":Landroid/os/UserManager;
    .restart local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    move v2, v5

    .line 815
    goto :goto_0

    .line 833
    .restart local v2    # "singleUser":Z
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/settings_ex/FingerprintAndPWD;->addOrdeleteMobilePasswordPreference(Z)V

    .line 838
    iget-object v4, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    const v5, 0x7f09009e

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 842
    .end local v0    # "mUm":Landroid/os/UserManager;
    .end local v2    # "singleUser":Z
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 846
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    .line 866
    :sswitch_1
    invoke-direct {p0, v4}, Lcom/android/settings_ex/FingerprintAndPWD;->addOrdeleteMobilePasswordPreference(Z)V

    goto :goto_1

    .line 849
    :sswitch_2
    invoke-direct {p0, v5}, Lcom/android/settings_ex/FingerprintAndPWD;->addOrdeleteMobilePasswordPreference(Z)V

    .line 850
    iget-object v4, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    const v5, 0x7f090294

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 856
    :sswitch_3
    invoke-direct {p0, v5}, Lcom/android/settings_ex/FingerprintAndPWD;->addOrdeleteMobilePasswordPreference(Z)V

    .line 857
    iget-object v4, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mChangeMobilePasswordPreference:Landroid/preference/Preference;

    const v5, 0x7f090295

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 846
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

.method private getSPN()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1110
    const/4 v1, 0x0

    .line 1111
    .local v1, "mSpn":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1113
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1114
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1115
    :cond_0
    const-string v1, "China Mobile"

    .line 1123
    :cond_1
    :goto_0
    return-object v1

    .line 1116
    :cond_2
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1117
    const-string v1, "China Union"

    goto :goto_0

    .line 1118
    :cond_3
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1119
    const-string v1, "China Telecom"

    goto :goto_0
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1143
    invoke-direct {p0, p1}, Lcom/android/settings_ex/FingerprintAndPWD;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 1145
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_0

    .line 1146
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1148
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSimNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 1152
    invoke-direct {p0, p1}, Lcom/android/settings_ex/FingerprintAndPWD;->findRecordBySlotId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 1153
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    const-string v1, ""

    .line 1154
    .local v1, "simNumber":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1155
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 1157
    :cond_0
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1158
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090123

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1161
    :cond_1
    return-object v1
.end method

.method private hasPassword()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1228
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1236
    :goto_0
    :sswitch_0
    return v0

    .line 1232
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1228
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method private initFingerPrintDBManager()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/FingerprintAndPWD$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/FingerprintAndPWD$2;-><init>(Lcom/android/settings_ex/FingerprintAndPWD;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 231
    return-void
.end method

.method private initOPFingerData()V
    .locals 3

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerData()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    .line 764
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 765
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    .line 767
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 768
    if-nez v0, :cond_2

    .line 769
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    const-string v2, "opfingerprint_1"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 771
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_1:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 772
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_1:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->setOPFingerTitle(Ljava/lang/String;)V

    .line 767
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 775
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 776
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    const-string v2, "opfingerprint_2"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 778
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_2:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 779
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_2:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->setOPFingerTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 782
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 783
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    const-string v2, "opfingerprint_3"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_3:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 786
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_3:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->setOPFingerTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 789
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 790
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    const-string v2, "opfingerprint_4"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 792
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_4:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 793
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_4:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->setOPFingerTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 796
    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    const-string v2, "opfingerprint_5"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_1

    .line 799
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprint_list_category:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_5:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 800
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_5:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->setOPFingerTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 805
    :cond_6
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 362
    :cond_0
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 236
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 239
    .local v0, "lock":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->lockMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 249
    const v3, 0x7f0905be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 253
    :goto_0
    const v3, 0x7f0900a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivityExt(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 241
    :pswitch_0
    const v3, 0x7f0905bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 243
    goto :goto_0

    .line 245
    :pswitch_1
    const v3, 0x7f0905c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 247
    goto :goto_0

    .line 239
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSwitchValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1094
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/FingerprintAndPWD$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings_ex/FingerprintAndPWD$6;-><init>(Lcom/android/settings_ex/FingerprintAndPWD;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1104
    return-void
.end method

.method private updateSwichState(I)V
    .locals 6
    .param p1, "fingerCount"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1196
    iget-boolean v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mShouldOpenFingerUnlock:Z

    if-eqz v2, :cond_0

    if-ne p1, v5, :cond_0

    .line 1197
    sget-object v2, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    invoke-direct {p0, v2, v5}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    .line 1199
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1201
    .local v1, "lockScreen":I
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1205
    .local v0, "checkOneplusAccount":I
    if-ne v1, v5, :cond_3

    .line 1206
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintUnlockMobile:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1211
    :goto_0
    if-ne v0, v5, :cond_4

    .line 1212
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1216
    :goto_1
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->hasPassword()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1217
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintUnlockMobile:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1218
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1219
    sget-object v2, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    .line 1220
    sget-object v2, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    .line 1223
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintUnlockMobile:Z

    .line 1224
    iput-boolean v4, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintCheckOneplusAccount:Z

    .line 1225
    return-void

    .line 1208
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintUnlockMobile:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 1214
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method public checkFingerIdIsValid()V
    .locals 4

    .prologue
    .line 421
    iget-object v3, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v3}, Lcom/oneplus/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v2

    .line 422
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 423
    aget v0, v2, v1

    .line 425
    .local v0, "fingerId":I
    iget-object v3, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->hasFingersId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->deleteFingerData(I)V

    .line 422
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    .end local v0    # "fingerId":I
    :cond_1
    return-void
.end method

.method public checkIfNeedPassword()V
    .locals 5

    .prologue
    const/16 v4, 0x67

    .line 258
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 260
    .local v1, "passwordQuality":I
    sparse-switch v1, :sswitch_data_0

    .line 287
    :goto_0
    return-void

    .line 262
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings_ex"

    const-string v3, "com.android.settings_ex.ConfirmLockPattern"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    invoke-virtual {p0, v0, v4}, Lcom/android/settings_ex/FingerprintAndPWD;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 273
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 274
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings_ex"

    const-string v3, "com.android.settings_ex.ConfirmLockPassword"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    invoke-virtual {p0, v0, v4}, Lcom/android/settings_ex/FingerprintAndPWD;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 260
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public disEnableHomeKey()V
    .locals 2

    .prologue
    .line 379
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mService:Lcom/oem/os/IOemExService;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mService:Lcom/oem/os/IOemExService;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/oem/os/IOemExService;->setKeyMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableHomeKey()V
    .locals 2

    .prologue
    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mService:Lcom/oem/os/IOemExService;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mService:Lcom/oem/os/IOemExService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oem/os/IOemExService;->setKeyMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 369
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public highLightRightOPFingerPrint(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    .line 489
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 490
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    .line 491
    .local v0, "entity":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerId()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 492
    if-nez v1, :cond_1

    .line 493
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_1:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->updateBackgroundColor(Z)V

    .line 489
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    :cond_1
    if-ne v1, v3, :cond_2

    .line 495
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_2:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->updateBackgroundColor(Z)V

    goto :goto_1

    .line 496
    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 497
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_3:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->updateBackgroundColor(Z)V

    goto :goto_1

    .line 498
    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 499
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_4:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->updateBackgroundColor(Z)V

    goto :goto_1

    .line 500
    :cond_4
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 501
    iget-object v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_5:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->updateBackgroundColor(Z)V

    goto :goto_1

    .line 505
    .end local v0    # "entity":Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;
    :cond_5
    return-void
.end method

.method public initFingerprintManager()V
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/FingerprintAndPWD$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/FingerprintAndPWD$3;-><init>(Lcom/android/settings_ex/FingerprintAndPWD;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 415
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1025
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1027
    const/16 v1, 0x64

    if-ne p1, v1, :cond_2

    .line 1028
    if-ne p2, v2, :cond_1

    .line 1029
    if-nez p3, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1032
    :cond_0
    const-string v1, "mIsDeletePassword"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1034
    .local v0, "mIsDeletePassword":Z
    const-string v1, "richie"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCancel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    if-eqz v0, :cond_1

    .line 1036
    invoke-direct {p0, v5}, Lcom/android/settings_ex/FingerprintAndPWD;->addOrdeleteMobilePasswordPreference(Z)V

    .line 1037
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 1038
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 1086
    .end local v0    # "mIsDeletePassword":Z
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintUnlockMobile:Z

    .line 1087
    iput-boolean v4, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintCheckOneplusAccount:Z

    goto :goto_0

    .line 1041
    :cond_2
    const/16 v1, 0x67

    if-ne p1, v1, :cond_3

    .line 1042
    if-eq p2, v2, :cond_1

    .line 1043
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->finish()V

    goto :goto_1

    .line 1045
    :cond_3
    const/16 v1, 0x7c

    if-ne p1, v1, :cond_6

    .line 1049
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    .line 1062
    :sswitch_0
    iget-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintUnlockMobile:Z

    if-eqz v1, :cond_5

    .line 1063
    sget-object v1, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    goto :goto_1

    .line 1055
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintUnlockMobile:Z

    if-eqz v1, :cond_4

    .line 1056
    sget-object v1, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    goto :goto_1

    .line 1057
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintCheckOneplusAccount:Z

    if-eqz v1, :cond_1

    .line 1058
    sget-object v1, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    goto :goto_1

    .line 1064
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintCheckOneplusAccount:Z

    if-eqz v1, :cond_1

    .line 1065
    sget-object v1, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    goto :goto_1

    .line 1069
    :cond_6
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_a

    .line 1070
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerCount()I

    move-result v1

    if-eqz v1, :cond_8

    .line 1071
    iget-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintUnlockMobile:Z

    if-eqz v1, :cond_7

    .line 1072
    sget-object v1, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    goto :goto_1

    .line 1073
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintCheckOneplusAccount:Z

    if-eqz v1, :cond_1

    .line 1074
    sget-object v1, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    goto :goto_1

    .line 1077
    :cond_8
    iget-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintUnlockMobile:Z

    if-eqz v1, :cond_9

    .line 1078
    sget-object v1, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    goto :goto_1

    .line 1079
    :cond_9
    iget-boolean v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintCheckOneplusAccount:Z

    if-eqz v1, :cond_1

    .line 1080
    sget-object v1, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    goto :goto_1

    .line 1083
    :cond_a
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_1

    .line 1084
    iput-boolean v5, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOnActivityResultAfterAddFinger:Z

    goto :goto_1

    .line 1049
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 185
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/FingerprintAndPWD;->curTime:J

    .line 187
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mContext:Landroid/content/Context;

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "oem.finger.print.support"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->isSupportFinger:Z

    .line 192
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 193
    iget-boolean v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->isSupportFinger:Z

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->checkIfNeedPassword()V

    .line 197
    :cond_0
    const-string v0, "OEMExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mService:Lcom/oem/os/IOemExService;

    .line 199
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 200
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->helper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 202
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 203
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSubInfoList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mSubInfoList:Ljava/util/List;

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->initFingerPrintDBManager()V

    .line 212
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-le v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->isSupportMultiSim:Z

    .line 218
    return-void

    .line 212
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 536
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onIdentified(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 485
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/FingerprintAndPWD;->highLightRightOPFingerPrint(I)V

    .line 486
    return-void
.end method

.method public onNoMatch()V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 309
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 311
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->release()I

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->releaseWakeLock()V

    .line 319
    invoke-direct {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->checkShouldOpenFingerUnlock()V

    .line 320
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLastIdentifiedTime:J

    .line 322
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1243
    invoke-virtual {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->unHighLightRightOPFingerPrint()V

    .line 1244
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintUnlockMobile:Landroid/preference/SwitchPreference;

    if-ne v0, p1, :cond_3

    .line 1245
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 1246
    .local v13, "unlockMobile":Z
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintUnlockMobile:Z

    .line 1248
    const-string v2, "com.oneplus.settings.opfinger.OPFingerPrintInputActivity$OPFingerPrintInputFragments"

    const v3, 0x7f09007f

    const/16 v4, 0x7d

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1266
    :goto_0
    const/4 v0, 0x1

    .line 1292
    .end local v13    # "unlockMobile":Z
    :goto_1
    return v0

    .line 1254
    .restart local v13    # "unlockMobile":Z
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintUnlockMobile:Z

    .line 1256
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1257
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "from_opfinger"

    const-string v1, "from_opfinger"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1258
    const-string v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f09027c

    const/16 v4, 0x7c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1264
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_1
    sget-object v1, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_LOCKSCREEN:Ljava/lang/String;

    if-eqz v13, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 1267
    .end local v13    # "unlockMobile":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintCheckOneplusAccount:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1268
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .line 1269
    .local v12, "checkOneplusAccount":Z
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 1270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintCheckOneplusAccount:Z

    .line 1271
    const-string v8, "com.oneplus.settings.opfinger.OPFingerPrintInputActivity$OPFingerPrintInputFragments"

    const v9, 0x7f09007f

    const/16 v10, 0x7d

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 1290
    :goto_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1277
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mClickFingerprintCheckOneplusAccount:Z

    .line 1279
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1280
    .restart local v5    # "bundle":Landroid/os/Bundle;
    const-string v0, "from_opfinger"

    const-string v1, "from_opfinger"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1281
    const-string v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f09027c

    const/16 v4, 0x7c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_3

    .line 1287
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_5
    sget-object v1, Lcom/android/settings_ex/FingerprintAndPWD;->OEM_FINGER_CHECK_ONEPLUS_ACCOUNT:Ljava/lang/String;

    if-eqz v12, :cond_6

    const/4 v0, 0x1

    :goto_4
    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/FingerprintAndPWD;->setSwitchValue(Ljava/lang/String;I)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 1292
    .end local v12    # "checkOneplusAccount":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 41
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 876
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v40

    .line 877
    .local v40, "key":Ljava/lang/String;
    const-string v2, "set_mobile_password"

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 878
    const-string v4, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    const v5, 0x7f09027c

    const/16 v6, 0x64

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 977
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 883
    :cond_0
    const-string v2, "sim_lock_settings"

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 885
    new-instance v39, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    move-object/from16 v0, v39

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    .local v39, "intent":Landroid/content/Intent;
    new-instance v38, Landroid/content/ComponentName;

    const-string v2, "com.android.settings_ex"

    const-string v3, "com.android.settings_ex.IccLockSettings"

    move-object/from16 v0, v38

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    .local v38, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 890
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 891
    .end local v38    # "componentName":Landroid/content/ComponentName;
    .end local v39    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v2, "change_mobile_password"

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 892
    const-string v4, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    const v5, 0x7f09027c

    const/16 v6, 0x7b

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0

    .line 897
    :cond_2
    const-string v2, "discard_mobile_password"

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->helper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    const/16 v3, 0x64

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    goto :goto_0

    .line 903
    :cond_3
    const-string v2, "opfingerprint_1"

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 904
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 905
    .local v7, "bundle_1":Landroid/os/Bundle;
    const-string v3, "opfinger_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerId()I

    move-result v2

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 907
    const-string v3, "opfinger_name"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 909
    const-string v4, "com.oneplus.settings.opfinger.OPFingerPrintEditFragments"

    const v5, 0x7f090087

    const/16 v6, 0x7b

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 913
    .end local v7    # "bundle_1":Landroid/os/Bundle;
    :cond_4
    const-string v2, "opfingerprint_2"

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 914
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 915
    .local v13, "bundle_2":Landroid/os/Bundle;
    const-string v3, "opfinger_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerId()I

    move-result v2

    invoke-virtual {v13, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 917
    const-string v3, "opfinger_name"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 919
    const-string v10, "com.oneplus.settings.opfinger.OPFingerPrintEditFragments"

    const v11, 0x7f090087

    const/16 v12, 0x7b

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 923
    .end local v13    # "bundle_2":Landroid/os/Bundle;
    :cond_5
    const-string v2, "opfingerprint_3"

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 924
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 925
    .local v19, "bundle_3":Landroid/os/Bundle;
    const-string v3, "opfinger_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerId()I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 927
    const-string v3, "opfinger_name"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 929
    const-string v16, "com.oneplus.settings.opfinger.OPFingerPrintEditFragments"

    const v17, 0x7f090087

    const/16 v18, 0x7b

    move-object/from16 v14, p0

    move-object/from16 v15, p0

    invoke-virtual/range {v14 .. v19}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 933
    .end local v19    # "bundle_3":Landroid/os/Bundle;
    :cond_6
    const-string v2, "opfingerprint_4"

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 934
    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    .line 935
    .local v25, "bundle_4":Landroid/os/Bundle;
    const-string v3, "opfinger_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerId()I

    move-result v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 937
    const-string v3, "opfinger_name"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 939
    const-string v22, "com.oneplus.settings.opfinger.OPFingerPrintEditFragments"

    const v23, 0x7f090087

    const/16 v24, 0x7b

    move-object/from16 v20, p0

    move-object/from16 v21, p0

    invoke-virtual/range {v20 .. v25}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 943
    .end local v25    # "bundle_4":Landroid/os/Bundle;
    :cond_7
    const-string v2, "opfingerprint_5"

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 944
    new-instance v31, Landroid/os/Bundle;

    invoke-direct/range {v31 .. v31}, Landroid/os/Bundle;-><init>()V

    .line 945
    .local v31, "bundle_5":Landroid/os/Bundle;
    const-string v3, "opfinger_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerId()I

    move-result v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 947
    const-string v3, "opfinger_name"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEntity;->getOpfingerName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 949
    const-string v28, "com.oneplus.settings.opfinger.OPFingerPrintEditFragments"

    const v29, 0x7f090087

    const/16 v30, 0x7b

    move-object/from16 v26, p0

    move-object/from16 v27, p0

    invoke-virtual/range {v26 .. v31}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 953
    .end local v31    # "bundle_5":Landroid/os/Bundle;
    :cond_8
    const-string v2, "add_fingerprint_list"

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->getOPFingerCount()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_a

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/FingerprintAndPWD;->enableHomeKey()V

    .line 959
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v2, :cond_9

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->release()I

    .line 962
    :cond_9
    const-string v34, "com.oneplus.settings.opfinger.OPFingerPrintInputActivity$OPFingerPrintInputFragments"

    const v35, 0x7f09007f

    const/16 v36, 0x7e

    const/16 v37, 0x0

    move-object/from16 v32, p0

    move-object/from16 v33, p0

    invoke-virtual/range {v32 .. v37}, Lcom/android/settings_ex/FingerprintAndPWD;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 968
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/FingerprintAndPWD;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090088

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 974
    :cond_b
    invoke-super/range {p0 .. p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 292
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mLastIdentifiedTime:J

    .line 293
    invoke-direct {p0}, Lcom/android/settings_ex/FingerprintAndPWD;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 301
    iget-boolean v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->isSupportFinger:Z

    if-eqz v0, :cond_0

    .line 305
    :cond_0
    return-void
.end method

.method public retry()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 525
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->abort()I

    .line 529
    iget-object v0, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/oneplus/fingerprints/service/FingerprintManager;->startFpIdentify(Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;I[II)I

    goto :goto_0
.end method

.method public unHighLightRightOPFingerPrint()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 508
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrintEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 509
    if-nez v0, :cond_1

    .line 510
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_1:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->updateBackgroundColor(Z)V

    .line 508
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 512
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_2:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->updateBackgroundColor(Z)V

    goto :goto_1

    .line 513
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 514
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_3:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->updateBackgroundColor(Z)V

    goto :goto_1

    .line 515
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 516
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_4:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->updateBackgroundColor(Z)V

    goto :goto_1

    .line 517
    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/settings_ex/FingerprintAndPWD;->mOPFingerPrint_5:Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintItemPreference;->updateBackgroundColor(Z)V

    goto :goto_1

    .line 521
    :cond_5
    return-void
.end method
