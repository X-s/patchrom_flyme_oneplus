.class public Lcom/android/settings_ex/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CryptKeeper$1;,
        Lcom/android/settings_ex/CryptKeeper$2;,
        Lcom/android/settings_ex/CryptKeeper$3;,
        Lcom/android/settings_ex/CryptKeeper$4;,
        Lcom/android/settings_ex/CryptKeeper$DecryptTask;,
        Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;,
        Lcom/android/settings_ex/CryptKeeper$ValidationTask;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final COOL_DOWN_ATTEMPTS:I = 0xa

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field private static final EXTRA_FORCE_VIEW:Ljava/lang/String; = "com.android.settings_ex.CryptKeeper.DEBUG_FORCE_VIEW"

.field private static final FAKE_ATTEMPT_DELAY:I = 0x3e8

.field private static final FORCE_VIEW_ERROR:Ljava/lang/String; = "error"

.field private static final FORCE_VIEW_PASSWORD:Ljava/lang/String; = "password"

.field private static final FORCE_VIEW_PROGRESS:Ljava/lang/String; = "progress"

.field private static final MAX_FAILED_ATTEMPTS:I = 0x1e

.field private static final MESSAGE_CHECK_IMEI_READY:I = 0x3

.field private static final MESSAGE_NOTIFY:I = 0x2

.field private static final MESSAGE_UPDATE_PROGRESS:I = 0x1

.field protected static final MIN_LENGTH_BEFORE_REPORT:I = 0x4

.field private static final RIGHT_PATTERN_CLEAR_TIMEOUT_MS:I = 0x1f4

.field private static final STATE_COOLDOWN:Ljava/lang/String; = "cooldown"

.field private static final TAG:Ljava/lang/String; = "CryptKeeper"

.field private static final VALID_IMEI_FOR_US_VERSION:Ljava/lang/String; = "01483600"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x5dc

.field private static final sWidgetsToDisable:I = 0x3270000


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCooldown:Z

.field private mCorrupt:Z

.field private mEncryptionGoneBad:Z

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mImeiReady:Z

.field private mImeiValid:Z

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mMdtpActivated:Z

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mReleaseWakeLockCountdown:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/CryptKeeper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/CryptKeeper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mMdtpActivated:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/CryptKeeper;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mCorrupt:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mMdtpActivated:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings_ex/CryptKeeper;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateFactoryReset()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/CryptKeeper;Landroid/view/View;)V
    .locals 0
    .param p1, "postingView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings_ex/CryptKeeper;I)V
    .locals 0
    .param p1, "passwordType"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->passwordEntryInit(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings_ex/CryptKeeper;Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings_ex/CryptKeeper;ZZ)V
    .locals 0
    .param p1, "corrupt"    # Z
    .param p2, "mdtp_activated"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(ZZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 106
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mImeiValid:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mImeiReady:Z

    .line 138
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    .line 144
    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 146
    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 147
    const v0, 0x7f0e0c64

    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusString:I

    .line 157
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$1;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$2;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 353
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$3;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 815
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$4;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    .line 814
    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 91
    return-void
.end method

.method private beginAttempt()V
    .locals 2

    .prologue
    .line 257
    const v1, 0x7f110106

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 258
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0e0c6a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 256
    return-void
.end method

.method private checkImei()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 504
    const-string/jumbo v1, "oem.device.imeicache"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    iput-boolean v3, p0, Lcom/android/settings_ex/CryptKeeper;->mImeiReady:Z

    .line 507
    iput-boolean v3, p0, Lcom/android/settings_ex/CryptKeeper;->mImeiValid:Z

    .line 515
    :goto_0
    const-string/jumbo v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkImei imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mImeiReady="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/CryptKeeper;->mImeiReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mImeiValid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/CryptKeeper;->mImeiValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void

    .line 508
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_2

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "01483600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings_ex/CryptKeeper;->mImeiReady:Z

    .line 510
    iput-boolean v4, p0, Lcom/android/settings_ex/CryptKeeper;->mImeiValid:Z

    goto :goto_0

    .line 512
    :cond_2
    iput-boolean v4, p0, Lcom/android/settings_ex/CryptKeeper;->mImeiReady:Z

    .line 513
    iput-boolean v3, p0, Lcom/android/settings_ex/CryptKeeper;->mImeiValid:Z

    goto :goto_0
.end method

.method private cooldown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 786
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 787
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_1

    .line 790
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 793
    :cond_1
    const v1, 0x7f110106

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 794
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0e061d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 784
    return-void
.end method

.method private delayAudioNotification()V
    .locals 1

    .prologue
    .line 1108
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 1107
    return-void
.end method

.method private static disableCryptKeeperComponent(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1140
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1141
    .local v0, "name":Landroid/content/ComponentName;
    const-string/jumbo v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Disabling component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const/4 v2, 0x2

    .line 1143
    const/4 v3, 0x1

    .line 1142
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1138
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .prologue
    .line 652
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 654
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 656
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "CryptKeeper"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 657
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 660
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f110105

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 662
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 665
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateProgress()V

    .line 648
    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 4
    .param p1, "postingView"    # Landroid/view/View;

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->beginAttempt()V

    .line 811
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 809
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 974
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 975
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 976
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 978
    :cond_0
    return-object v2
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 1101
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 1097
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .locals 14
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 263
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_0

    .line 264
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 265
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 266
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x5dc

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    if-nez v8, :cond_2

    .line 269
    iput-boolean v12, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    .line 272
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->cooldown()V

    .line 261
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    const v8, 0x7f110106

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 276
    .local v5, "status":Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int/lit8 v3, v8, 0x1e

    .line 277
    .local v3, "remainingAttempts":I
    const/16 v8, 0xa

    if-ge v3, v8, :cond_4

    .line 278
    const v8, 0x7f0e061e

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 279
    .local v7, "warningTemplate":Ljava/lang/CharSequence;
    new-array v8, v12, [Ljava/lang/CharSequence;

    .line 280
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    .line 279
    invoke-static {v7, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 281
    .local v6, "warning":Ljava/lang/CharSequence;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .end local v6    # "warning":Ljava/lang/CharSequence;
    .end local v7    # "warningTemplate":Ljava/lang/CharSequence;
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_3

    .line 301
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 302
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 306
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v8, :cond_1

    .line 307
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 309
    const-string/jumbo v8, "input_method"

    .line 308
    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 310
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v8, v13}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 311
    invoke-direct {p0, v12}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    goto :goto_0

    .line 283
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    const/4 v2, 0x0

    .line 285
    .local v2, "passwordType":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 286
    .local v4, "service":Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 291
    .end local v4    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v8, 0x3

    if-ne v2, v8, :cond_5

    .line 292
    const v8, 0x7f0e0c69

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error calling mount service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x2

    if-ne v2, v8, :cond_6

    .line 294
    const v8, 0x7f0e0c67

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 296
    :cond_6
    const v8, 0x7f0e0c68

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 934
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 937
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 939
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "imi$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 941
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v9, :cond_1

    return v9

    .line 943
    :cond_1
    invoke-virtual {p1, v3, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 945
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 946
    add-int/lit8 v2, v2, 0x1

    .line 947
    goto :goto_0

    .line 950
    :cond_2
    const/4 v0, 0x0

    .line 951
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "subtype$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodSubtype;

    .line 952
    .local v6, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 956
    .end local v6    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v5, v11, v0

    .line 961
    .local v5, "nonAuxCount":I
    if-gtz v5, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v9, :cond_0

    .line 962
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 963
    goto :goto_0

    .line 967
    .end local v0    # "auxCount":I
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "nonAuxCount":I
    .end local v7    # "subtype$iterator":Ljava/util/Iterator;
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v9, :cond_7

    .line 970
    const/4 v11, 0x0

    invoke-virtual {p1, v11, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v9, :cond_8

    .line 967
    :cond_7
    :goto_2
    return v9

    :cond_8
    move v9, v10

    .line 970
    goto :goto_2
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings_ex.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings_ex.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 1075
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 1089
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1092
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 1093
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 1088
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 403
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_2

    .line 404
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 418
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 419
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 421
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v1, :cond_3

    .line 423
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 402
    :cond_1
    :goto_1
    return-void

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private passwordEntryInit(I)V
    .locals 9
    .param p1, "passwordType"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x2

    .line 844
    if-eq p1, v8, :cond_5

    .line 846
    const v4, 0x7f110103

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 847
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 848
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 849
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 851
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 852
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 853
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 864
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 865
    const v4, 0x7f110102

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 866
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 867
    const-string/jumbo v4, "CryptKeeper"

    const-string/jumbo v5, "Removing the emergency Call button"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 872
    .end local v0    # "emergencyCall":Landroid/view/View;
    :cond_1
    const v4, 0x7f11010f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 874
    .local v1, "imeSwitcher":Landroid/view/View;
    const-string/jumbo v4, "input_method"

    .line 873
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 875
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eq p1, v8, :cond_2

    .line 876
    if-eqz v1, :cond_2

    invoke-direct {p0, v2, v6}, Lcom/android/settings_ex/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 877
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 878
    new-instance v4, Lcom/android/settings_ex/CryptKeeper$7;

    invoke-direct {v4, p0, v2}, Lcom/android/settings_ex/CryptKeeper$7;-><init>(Lcom/android/settings_ex/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 890
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_3

    .line 891
    const-string/jumbo v4, "CryptKeeper"

    const-string/jumbo v5, "Acquiring wakelock."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string/jumbo v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 893
    .local v3, "pm":Landroid/os/PowerManager;
    if-eqz v3, :cond_3

    .line 894
    const-string/jumbo v4, "CryptKeeper"

    const/16 v5, 0x1a

    invoke-virtual {v3, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 895
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 898
    const/16 v4, 0x60

    iput v4, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 904
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_3
    if-eq p1, v8, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    if-eqz v4, :cond_6

    .line 914
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 916
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 917
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 920
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x480000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 843
    return-void

    .line 857
    .end local v1    # "imeSwitcher":Landroid/view/View;
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    const v4, 0x7f1100de

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView;

    iput-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 858
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v4, :cond_0

    .line 859
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    goto/16 :goto_0

    .line 905
    .restart local v1    # "imeSwitcher":Landroid/view/View;
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 906
    const/4 v5, 0x5

    .line 905
    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 907
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings_ex/CryptKeeper$8;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/CryptKeeper$8;-><init>(Lcom/android/settings_ex/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    .line 911
    const-wide/16 v6, 0x0

    .line 907
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1028
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 1029
    .local v1, "isLteDevice":Z
    :goto_0
    if-nez v1, :cond_0

    .line 1030
    const-string/jumbo v3, "CryptKeeper"

    const-string/jumbo v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1032
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1034
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1026
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1028
    .end local v1    # "isLteDevice":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 802
    if-eqz p1, :cond_0

    .line 803
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3270000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 801
    :goto_0
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3670000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private setupUi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f040056

    .line 534
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "error"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 536
    iget-boolean v1, p0, Lcom/android/settings_ex/CryptKeeper;->mCorrupt:Z

    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mMdtpActivated:Z

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(ZZ)V

    .line 537
    return-void

    .line 540
    :cond_1
    const-string/jumbo v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "progress":Ljava/lang/String;
    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 542
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 543
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->encryptionProgressInit()V

    .line 533
    :cond_3
    :goto_0
    return-void

    .line 544
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_5

    const-string/jumbo v2, "password"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 545
    :cond_5
    new-instance v1, Lcom/android/settings_ex/CryptKeeper$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/CryptKeeper$5;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/CryptKeeper$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 607
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_3

    .line 609
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$ValidationTask;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 610
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset(ZZ)V
    .locals 7
    .param p1, "corrupt"    # Z
    .param p2, "mdtp_activated"    # Z

    .prologue
    const v6, 0x7f110106

    const v5, 0x7f110063

    const/4 v4, 0x0

    .line 678
    const v2, 0x7f110108

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 681
    const v2, 0x7f110109

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 682
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 683
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$6;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/settings_ex/CryptKeeper$6;-><init>(Lcom/android/settings_ex/CryptKeeper;ZZ)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 722
    if-eqz p1, :cond_1

    .line 723
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0622

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 724
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0623

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 730
    :goto_0
    const v2, 0x7f11010a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 732
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 676
    :cond_0
    return-void

    .line 726
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0620

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 727
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e0621

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 1080
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1081
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 1078
    :goto_0
    return-void

    .line 1083
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 3

    .prologue
    .line 1045
    const v2, 0x7f110102

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1047
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 1048
    return-void

    .line 1050
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1051
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1052
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$9;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/CryptKeeper$9;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1065
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1067
    const v1, 0x7f0e0cc2

    .line 1071
    .local v1, "textId":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1044
    return-void

    .line 1060
    .end local v1    # "textId":I
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1061
    return-void

    .line 1069
    :cond_2
    const v1, 0x7f0e0cc1

    .restart local v1    # "textId":I
    goto :goto_0
.end method

.method private updateFactoryReset()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    .line 519
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->checkImei()V

    .line 520
    iget-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mImeiReady:Z

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 522
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 518
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mCorrupt:Z

    iget-boolean v1, p0, Lcom/android/settings_ex/CryptKeeper;->mMdtpActivated:Z

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(ZZ)V

    goto :goto_0
.end method

.method private updateProgress()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 738
    const-string/jumbo v8, "vold.encrypt_progress"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 740
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v8, "error_partially_encrypted"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 741
    invoke-direct {p0, v11, v11}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(ZZ)V

    .line 742
    return-void

    .line 746
    :cond_0
    const v8, 0x7f0e061b

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 747
    .local v4, "status":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 750
    .local v1, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    const/16 v1, 0x32

    .line 754
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "progress":Ljava/lang/String;
    const-string/jumbo v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Encryption progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :try_start_1
    const-string/jumbo v8, "vold.encrypt_time_remaining"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 760
    .local v6, "timeProperty":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 761
    .local v5, "time":I
    if-ltz v5, :cond_1

    .line 763
    add-int/lit8 v8, v5, 0x9

    div-int/lit8 v8, v8, 0xa

    mul-int/lit8 v5, v8, 0xa

    .line 764
    int-to-long v8, v5

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 765
    const v8, 0x7f0e061c

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 771
    .end local v5    # "time":I
    .end local v6    # "timeProperty":Ljava/lang/String;
    :cond_1
    :goto_1
    const v8, 0x7f110106

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 772
    .local v7, "tv":Landroid/widget/TextView;
    if-eqz v7, :cond_2

    .line 773
    new-array v8, v12, [Ljava/lang/CharSequence;

    aput-object v2, v8, v11

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 737
    return-void

    .line 750
    .end local v2    # "progress":Ljava/lang/String;
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_3
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error parsing progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 767
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "progress":Ljava/lang/String;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1135
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1125
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 440
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 443
    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "state":Ljava/lang/String;
    const-string/jumbo v5, "ro.alarm_boot"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 445
    .local v1, "isAlarmBoot":Z
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isDebugView()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "trigger_restart_framework"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 447
    :cond_1
    invoke-static {p0}, Lcom/android/settings_ex/CryptKeeper;->disableCryptKeeperComponent(Landroid/content/Context;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->finish()V

    .line 456
    return-void

    .line 460
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c002f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 461
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_3
    :goto_0
    const-string/jumbo v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 469
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v6, 0x3270000

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 471
    if-eqz p1, :cond_4

    .line 472
    const-string/jumbo v5, "cooldown"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    .line 475
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 476
    const-string/jumbo v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 478
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    .line 479
    .local v2, "lastInstance":Ljava/lang/Object;
    instance-of v5, v2, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v5, :cond_5

    move-object v3, v2

    .line 480
    check-cast v3, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    .line 481
    .local v3, "retained":Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    iget-object v5, v3, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 482
    const-string/jumbo v5, "CryptKeeper"

    const-string/jumbo v6, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v3    # "retained":Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    :cond_5
    return-void

    .line 463
    .end local v2    # "lastInstance":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 636
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 638
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 639
    const-string/jumbo v0, "CryptKeeper"

    const-string/jumbo v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 641
    iput-object v2, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 635
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 983
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_3

    .line 985
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 987
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 988
    return v4

    .line 992
    :cond_1
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 997
    invoke-direct {p0, v3}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 999
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 1000
    new-instance v1, Lcom/android/settings_ex/CryptKeeper$DecryptTask;

    invoke-direct {v1, p0, v5}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$DecryptTask;)V

    new-array v2, v4, [Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1006
    :goto_0
    return v4

    .line 1003
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    goto :goto_0

    .line 1008
    .end local v0    # "password":Ljava/lang/String;
    :cond_3
    return v3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1113
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 1114
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 628
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 629
    .local v0, "state":Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 631
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 488
    const-string/jumbo v0, "cooldown"

    iget-boolean v1, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 487
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 498
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 499
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setupUi()V

    .line 497
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 616
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 617
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 618
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 615
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 1129
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1119
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 1120
    const/4 v0, 0x0

    return v0
.end method
