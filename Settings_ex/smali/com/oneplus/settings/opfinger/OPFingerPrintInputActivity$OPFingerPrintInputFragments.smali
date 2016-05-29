.class public Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPFingerPrintInputActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/oneplus/fingerprints/service/FingerprintManager$CaptureCallback;
.implements Lcom/oneplus/fingerprints/service/FingerprintManager$EnrolCallback;
.implements Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OPFingerPrintInputFragments"
.end annotation


# static fields
.field private static final CHECK_FINGER_END:I = 0x4

.field private static final CHECK_FINGER_START:I = 0x3

.field private static final DELETE_FINGER_COMPLETED:I = 0x2

.field private static final KEY_OPFINGER_INPUT:Ljava/lang/String; = "key_opfinger_input"

.field private static final SETTING_PASSWORD_REQUEST:I = 0x1

.field private static final START_DELETE_FINGER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OPFingerPrintInputFragments"

.field private static final UP_FINGERPRINGT:I = 0x5


# instance fields
.field private helper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

.field private mComfirmSaveFinger:Z

.field private mContinueInput:Z

.field private mCurrentProgress:I

.field private mEnrolId:I

.field private mEnrollSuccessCount:I

.field private mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasInputCompleted:Z

.field private mHasInputStart:Z

.field private mInputCompleted:Z

.field private mIsSupportFinger:Z

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNoLockScreen:Z

.field private mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

.field private mOPFingerPrintDBManager:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

.field private mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

.field private mOPScreenListener:Lcom/oneplus/settings/opfinger/OPScreenListener;

.field private mOPfingerId:I

.field private mOnPause:Z

.field private mOnResume:Z

.field private mPercent:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mService:Lcom/oem/os/IOemExService;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockUseRunnable:Ljava/lang/Runnable;

.field private m_MaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/settings/opfinger/RectangleMask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 90
    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mCurrentProgress:I

    .line 92
    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mPercent:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 101
    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPfingerId:I

    .line 102
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mKeyStore:Landroid/security/KeyStore;

    .line 106
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mComfirmSaveFinger:Z

    .line 109
    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mEnrollSuccessCount:I

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOnResume:Z

    .line 112
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOnPause:Z

    .line 114
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHasInputStart:Z

    .line 115
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHasInputCompleted:Z

    .line 116
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mContinueInput:Z

    .line 119
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mNoLockScreen:Z

    .line 120
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mIsSupportFinger:Z

    .line 121
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mInputCompleted:Z

    .line 123
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$1;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHandler:Landroid/os/Handler;

    .line 428
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$5;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mNoLockScreen:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Lcom/oneplus/fingerprints/service/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;Lcom/oneplus/fingerprints/service/FingerprintManager;)Lcom/oneplus/fingerprints/service/FingerprintManager;
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;
    .param p1, "x1"    # Lcom/oneplus/fingerprints/service/FingerprintManager;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    .prologue
    .line 77
    iget v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mEnrolId:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 530
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 531
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 532
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "OPFingerPrintInputFragments"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 533
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 535
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "key_opfinger_input"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    .line 238
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 239
    new-instance v0, Lcom/oneplus/settings/opfinger/OPScreenListener;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/settings/opfinger/OPScreenListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPScreenListener:Lcom/oneplus/settings/opfinger/OPScreenListener;

    .line 240
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintDBManager:Lcom/oneplus/settings/opfinger/OPFingerPrintDBManager;

    .line 241
    new-instance v0, Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-direct {v0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    .line 242
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->saxCreateFingerDataXML()Ljava/lang/String;

    .line 243
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 244
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mNoLockScreen:Z

    .line 245
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->helper:Lcom/android/settings_ex/ChooseLockSettingsHelper;

    .line 246
    return-void
.end method

.method private registerScreenListener()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPScreenListener:Lcom/oneplus/settings/opfinger/OPScreenListener;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$2;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPScreenListener;->begin(Lcom/oneplus/settings/opfinger/OPScreenListener$ScreenStateListener;)V

    .line 190
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 543
    :cond_0
    return-void
.end method


# virtual methods
.method public checkFingerIdIsValid()V
    .locals 4

    .prologue
    .line 223
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v3}, Lcom/oneplus/fingerprints/service/FingerprintManager;->getIds()[I

    move-result-object v2

    .line 225
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 226
    aget v0, v2, v1

    .line 228
    .local v0, "fingerId":I
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->hasFingersId(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/fingerprints/service/FingerprintManager;->deleteFingerData(I)V

    .line 225
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "fingerId":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :cond_1
    return-void
.end method

.method public disEnableHomeKey()V
    .locals 2

    .prologue
    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mService:Lcom/oem/os/IOemExService;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mService:Lcom/oem/os/IOemExService;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/oem/os/IOemExService;->setKeyMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableHomeKey()V
    .locals 2

    .prologue
    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mService:Lcom/oem/os/IOemExService;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mService:Lcom/oem/os/IOemExService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oem/os/IOemExService;->setKeyMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initFingerprintManager()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$3;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 217
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 548
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 549
    if-ne p1, v1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 557
    :sswitch_0
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mComfirmSaveFinger:Z

    .line 559
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPfingerId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->addOPFingerId(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090081

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 561
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->finish()V

    goto :goto_0

    .line 565
    :sswitch_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$6;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$6;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 551
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
    .end sparse-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 499
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 500
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mVibrator:Landroid/os/Vibrator;

    .line 501
    return-void
.end method

.method public onCaptureCompleted()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public onCaptureFailed(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 485
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 160
    const v0, 0x7f06004b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->addPreferencesFromResource(I)V

    .line 161
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->initViews()V

    .line 162
    const-string v0, "OEMExService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mService:Lcom/oem/os/IOemExService;

    .line 163
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.finger.print.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mIsSupportFinger:Z

    .line 165
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 334
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 335
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 507
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDetach()V

    .line 508
    return-void
.end method

.method public onEnrollDuplicated(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09008a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 466
    return-void
.end method

.method public onEnrolled(I)V
    .locals 4
    .param p1, "who"    # I

    .prologue
    const/4 v1, 0x0

    .line 343
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPfingerId:I

    .line 344
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 346
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->setTipsCompletedContent()V

    .line 347
    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mCurrentProgress:I

    .line 348
    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mEnrollSuccessCount:I

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mInputCompleted:Z

    .line 351
    return-void
.end method

.method public onEnrollmentFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHasInputStart:Z

    .line 369
    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mCurrentProgress:I

    .line 370
    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mEnrollSuccessCount:I

    .line 371
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->enrollFailed()V

    .line 372
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mInputCompleted:Z

    .line 373
    return-void
.end method

.method public onInput()V
    .locals 0

    .prologue
    .line 476
    return-void
.end method

.method public onOPFingerComfirmClick()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 514
    iput-boolean v4, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mComfirmSaveFinger:Z

    .line 515
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerDataManager:Lcom/oneplus/settings/opfinger/OPFingerDataManager;

    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPfingerId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090080

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerDataManager;->addOPFingerId(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090081

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 519
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->finish()V

    .line 526
    :goto_0
    return-void

    .line 521
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 522
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "from_opfinger"

    const-string v1, "from_opfinger"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 523
    const-string v2, "com.android.settings_ex.ChooseLockGeneric$ChooseLockGenericFragment"

    const v3, 0x7f09027c

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 302
    iput-boolean v6, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOnResume:Z

    .line 303
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOnPause:Z

    .line 304
    iput-boolean v6, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHasInputStart:Z

    .line 305
    iput-boolean v6, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHasInputCompleted:Z

    .line 306
    iput-boolean v6, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mContinueInput:Z

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 308
    .local v0, "cur":J
    iget-boolean v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mComfirmSaveFinger:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mInputCompleted:Z

    if-eqz v2, :cond_0

    .line 309
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    iget v3, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPfingerId:I

    invoke-virtual {v2, v3}, Lcom/oneplus/fingerprints/service/FingerprintManager;->deleteFingerData(I)V

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    if-eqz v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-virtual {v2}, Lcom/oneplus/fingerprints/service/FingerprintManager;->release()I

    .line 316
    :cond_1
    const-string v2, "input:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zhuyang--release-time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->enableHomeKey()V

    .line 318
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->releaseWakeLock()V

    .line 321
    iput v6, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mCurrentProgress:I

    .line 322
    iput v6, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mEnrollSuccessCount:I

    .line 323
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 324
    iget-boolean v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mComfirmSaveFinger:Z

    if-nez v2, :cond_2

    .line 326
    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->resetWithoutAnimation()V

    .line 328
    :cond_2
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public onProgress(I)V
    .locals 1
    .param p1, "guidedData"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->m_MaskList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->onProgressUpdate(ILjava/util/ArrayList;)V

    .line 361
    return-void
.end method

.method public onProgressUpdate(ILjava/util/ArrayList;)V
    .locals 7
    .param p1, "iProgress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oneplus/settings/opfinger/RectangleMask;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "maskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/settings/opfinger/RectangleMask;>;"
    const/16 v6, 0x64

    .line 378
    :try_start_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "zhuyang--onProgressUpdate"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 379
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHasInputStart:Z

    .line 380
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mInputCompleted:Z

    .line 381
    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mCurrentProgress:I

    if-le p1, v1, :cond_6

    .line 382
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mCurrentProgress:I

    .line 383
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 384
    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mEnrollSuccessCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mEnrollSuccessCount:I

    .line 385
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    iget v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mEnrollSuccessCount:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->doRecognition(IIZ)V

    .line 386
    if-lt p1, v6, :cond_4

    .line 387
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHasInputCompleted:Z

    .line 388
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    iget v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mEnrollSuccessCount:I

    invoke-virtual {v1, v2, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->setTipsProgressContent(II)V

    .line 394
    :goto_0
    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mEnrollSuccessCount:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_5

    .line 395
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mContinueInput:Z

    .line 396
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$4;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments$4;-><init>(Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 414
    :cond_0
    :goto_1
    if-lt p1, v6, :cond_1

    .line 415
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->revealWithoutAnimation()V

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_3

    .line 419
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->acquireWakeLock()V

    .line 421
    :cond_3
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 422
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 426
    :goto_2
    return-void

    .line 392
    :cond_4
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v4, 0x5dc

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 402
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mContinueInput:Z

    goto :goto_1

    .line 404
    :cond_6
    iget v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mCurrentProgress:I

    if-ne p1, v1, :cond_0

    .line 405
    iput p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mCurrentProgress:I

    .line 407
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    iget v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mEnrollSuccessCount:I

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->doRecognition(IIZ)V

    .line 408
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->setTipsStatusContent(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOnResume:Z

    .line 286
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOnPause:Z

    .line 287
    iput-boolean v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mInputCompleted:Z

    .line 288
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory$OnOPFingerComfirmListener;)V

    .line 289
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->disEnableHomeKey()V

    .line 291
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mComfirmSaveFinger:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mIsSupportFinger:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->initFingerprintManager()V

    .line 294
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mComfirmSaveFinger:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->resetWithoutAnimation()V

    .line 297
    :cond_1
    return-void
.end method

.method public onStatus(II)V
    .locals 3
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I

    .prologue
    const/4 v2, 0x5

    .line 450
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "zhuyang--onStatus"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mContinueInput:Z

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->setTipsContinueContent()V

    .line 453
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHasInputStart:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHasInputCompleted:Z

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mOPFingerPrintInputViewCategory:Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintInputViewCategory;->setTipsStatusContent(I)V

    .line 459
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintInputActivity$OPFingerPrintInputFragments;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public onWaitingForInput()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method
