.class public Lcom/android/settings_ex/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CryptKeeper$ValidationTask;,
        Lcom/android/settings_ex/CryptKeeper$DecryptTask;,
        Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
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

.field private static final MESSAGE_NOTIFY:I = 0x2

.field private static final MESSAGE_UPDATE_PROGRESS:I = 0x1

.field protected static final MIN_LENGTH_BEFORE_REPORT:I = 0x4

.field private static final RIGHT_PATTERN_CLEAR_TIMEOUT_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "CryptKeeper"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x5dc

.field private static final sWidgetsToDisable:I = 0x3370000


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCooldown:Z

.field private mCorrupt:Z

.field private mEncryptionGoneBad:Z

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreBack:Z

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNotificationCountdown:I

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mReleaseWakeLockCountdown:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 119
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mIgnoreBack:Z

    .line 122
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    .line 128
    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 130
    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 131
    const v0, 0x7f0908e1

    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusString:I

    .line 141
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$1;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$2;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 321
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$3;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 709
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeper$6;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/CryptKeeper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    iget v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/CryptKeeper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/CryptKeeper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/settings_ex/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/settings_ex/CryptKeeper;->mCorrupt:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/CryptKeeper;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setupUi()V

    return-void
.end method

.method private beginAttempt()V
    .locals 2

    .prologue
    .line 228
    const v1, 0x7f0f001d

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 229
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0908e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    return-void
.end method

.method private cooldown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 680
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_1

    .line 684
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 687
    :cond_1
    const v1, 0x7f0f001d

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 688
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f090274

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 689
    return-void
.end method

.method private delayAudioNotification()V
    .locals 1

    .prologue
    .line 995
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 996
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .prologue
    .line 574
    const-string v1, "CryptKeeper"

    const-string v2, "Encryption progress screen initializing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 576
    const-string v1, "CryptKeeper"

    const-string v2, "Acquiring wakelock."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 578
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 579
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 582
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v1, 0x7f0f0062

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 584
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 587
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateProgress()V

    .line 588
    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 4
    .param p1, "postingView"    # Landroid/view/View;

    .prologue
    .line 705
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->beginAttempt()V

    .line 706
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 707
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 861
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 862
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 863
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 865
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .prologue
    .line 988
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 984
    const-string v0, "phone"

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

    .line 234
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_0

    .line 235
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 236
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 237
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings_ex/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x5dc

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rem-int/lit8 v8, v8, 0xa

    if-nez v8, :cond_2

    .line 240
    iput-boolean v12, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    .line 243
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->cooldown()V

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 245
    :cond_2
    const v8, 0x7f0f001d

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 247
    .local v5, "status":Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int/lit8 v3, v8, 0x1e

    .line 248
    .local v3, "remainingAttempts":I
    const/16 v8, 0xa

    if-ge v3, v8, :cond_4

    .line 249
    const v8, 0x7f090275

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 250
    .local v7, "warningTemplate":Ljava/lang/CharSequence;
    new-array v8, v12, [Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    invoke-static {v7, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 252
    .local v6, "warning":Ljava/lang/CharSequence;
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    .end local v6    # "warning":Ljava/lang/CharSequence;
    .end local v7    # "warningTemplate":Ljava/lang/CharSequence;
    :goto_1
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v8, :cond_3

    .line 272
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 273
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v8, v12}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 277
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v8, :cond_1

    .line 278
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 279
    const-string v8, "input_method"

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 281
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v8, v13}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 282
    invoke-direct {p0, v12}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    goto :goto_0

    .line 254
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    const/4 v2, 0x0

    .line 256
    .local v2, "passwordType":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 257
    .local v4, "service":Landroid/os/storage/IMountService;
    invoke-interface {v4}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 262
    .end local v4    # "service":Landroid/os/storage/IMountService;
    :goto_2
    const/4 v8, 0x3

    if-ne v2, v8, :cond_5

    .line 263
    const v8, 0x7f0908e6

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error calling mount service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 264
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const/4 v8, 0x2

    if-ne v2, v8, :cond_6

    .line 265
    const v8, 0x7f0908e4

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 267
    :cond_6
    const v8, 0x7f0908e5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 821
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 824
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 826
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 828
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 854
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 829
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 832
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 833
    add-int/lit8 v2, v2, 0x1

    .line 834
    goto :goto_0

    .line 837
    :cond_2
    const/4 v0, 0x0

    .line 838
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 839
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 840
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 843
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 848
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 849
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 850
    goto :goto_0

    .line 854
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings_ex.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings_ex.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 976
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 977
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 979
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 980
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 981
    return-void
.end method

.method private notifyUser()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 365
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    if-lez v1, :cond_2

    .line 366
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/CryptKeeper;->mNotificationCountdown:I

    .line 380
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 381
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 383
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v1, :cond_3

    .line 385
    iget v1, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 390
    :cond_1
    :goto_1
    return-void

    .line 367
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 374
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x5

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method

.method private passwordEntryInit()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 739
    const v4, 0x7f0f005f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 740
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 741
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 742
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 744
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 745
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 746
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 750
    :cond_0
    const v4, 0x7f0f0051

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/LockPatternView;

    iput-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 751
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v4, :cond_1

    .line 752
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 756
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 757
    const v4, 0x7f0f005e

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 758
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 759
    const-string v4, "CryptKeeper"

    const-string v5, "Removing the emergency Call button"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 764
    .end local v0    # "emergencyCall":Landroid/view/View;
    :cond_2
    const v4, 0x7f0f0060

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 765
    .local v1, "imeSwitcher":Landroid/view/View;
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 767
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    invoke-direct {p0, v2, v6}, Lcom/android/settings_ex/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 768
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 769
    new-instance v4, Lcom/android/settings_ex/CryptKeeper$7;

    invoke-direct {v4, p0, v2}, Lcom/android/settings_ex/CryptKeeper$7;-><init>(Lcom/android/settings_ex/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 780
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v4, :cond_4

    .line 781
    const-string v4, "CryptKeeper"

    const-string v5, "Acquiring wakelock."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 783
    .local v3, "pm":Landroid/os/PowerManager;
    if-eqz v3, :cond_4

    .line 784
    const/16 v4, 0x1a

    const-string v5, "CryptKeeper"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 785
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 788
    const/16 v4, 0x60

    iput v4, p0, Lcom/android/settings_ex/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 794
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/settings_ex/CryptKeeper;->mCooldown:Z

    if-nez v4, :cond_5

    .line 795
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings_ex/CryptKeeper$8;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/CryptKeeper$8;-><init>(Lcom/android/settings_ex/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 802
    :cond_5
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 804
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 805
    iget-object v4, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v6, 0x1d4c0

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 808
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x480000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 810
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 914
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 916
    .local v1, "isLteDevice":Z
    :goto_0
    if-nez v1, :cond_0

    .line 917
    const-string v3, "CryptKeeper"

    const-string v4, "Going into airplane mode."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 919
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 921
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 923
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 914
    .end local v1    # "isLteDevice":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 696
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mIgnoreBack:Z

    .line 697
    if-eqz p1, :cond_1

    .line 698
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3370000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 702
    :goto_1
    return-void

    .line 696
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3770000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_1
.end method

.method private setupUi()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const v3, 0x7f040028

    .line 466
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v2, :cond_0

    const-string v2, "error"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 468
    iget-boolean v1, p0, Lcom/android/settings_ex/CryptKeeper;->mCorrupt:Z

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(Z)V

    .line 534
    :cond_1
    :goto_0
    return-void

    .line 472
    :cond_2
    const-string v2, "vold.encrypt_progress"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, "progress":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 474
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/CryptKeeper;->setContentView(I)V

    .line 475
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 476
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationComplete:Z

    if-nez v2, :cond_5

    const-string v2, "password"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 477
    :cond_5
    new-instance v1, Lcom/android/settings_ex/CryptKeeper$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/CryptKeeper$4;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/CryptKeeper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 529
    :cond_6
    iget-boolean v2, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationRequested:Z

    if-nez v2, :cond_1

    .line 531
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$ValidationTask;

    invoke-direct {v2, p0, v1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 532
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset(Z)V
    .locals 7
    .param p1, "corrupt"    # Z

    .prologue
    const v6, 0x7f0f0035

    const v5, 0x7f0f001d

    const/4 v4, 0x0

    .line 598
    const v2, 0x7f0f0063

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 601
    const v2, 0x7f0f0064

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 602
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 603
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_ex/CryptKeeper$5;-><init>(Lcom/android/settings_ex/CryptKeeper;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    if-eqz p1, :cond_1

    .line 617
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090279

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 618
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09027a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 624
    :goto_0
    const v2, 0x7f0f0065

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 626
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 627
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 629
    :cond_0
    return-void

    .line 620
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090277

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 621
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090278

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 966
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 967
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 3

    .prologue
    .line 932
    const v2, 0x7f0f005e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 934
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 959
    :goto_0
    return-void

    .line 937
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 938
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 939
    new-instance v2, Lcom/android/settings_ex/CryptKeeper$9;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/CryptKeeper$9;-><init>(Lcom/android/settings_ex/CryptKeeper;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 954
    const v1, 0x7f09097b

    .line 958
    .local v1, "textId":I
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 947
    .end local v1    # "textId":I
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 956
    :cond_2
    const v1, 0x7f09097a

    .restart local v1    # "textId":I
    goto :goto_1
.end method

.method private updateProgress()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 632
    const-string v8, "vold.encrypt_progress"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 634
    .local v3, "state":Ljava/lang/String;
    const-string v8, "error_partially_encrypted"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 635
    invoke-direct {p0, v11}, Lcom/android/settings_ex/CryptKeeper;->showFactoryReset(Z)V

    .line 673
    :goto_0
    return-void

    .line 640
    :cond_0
    const v8, 0x7f090272

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 641
    .local v4, "status":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 644
    .local v1, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    const/16 v1, 0x32

    .line 648
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "progress":Ljava/lang/String;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encryption progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :try_start_1
    const-string v8, "vold.encrypt_time_remaining"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 654
    .local v6, "timeProperty":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 655
    .local v5, "time":I
    if-ltz v5, :cond_1

    .line 657
    add-int/lit8 v8, v5, 0x9

    div-int/lit8 v8, v8, 0xa

    mul-int/lit8 v5, v8, 0xa

    .line 658
    int-to-long v8, v5

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    .line 659
    const v8, 0x7f090273

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 665
    .end local v5    # "time":I
    .end local v6    # "timeProperty":Ljava/lang/String;
    :cond_1
    :goto_2
    const v8, 0x7f0f001d

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 666
    .local v7, "tv":Landroid/widget/TextView;
    if-eqz v7, :cond_2

    .line 667
    new-array v8, v12, [Ljava/lang/CharSequence;

    aput-object v2, v8, v11

    invoke-static {v4, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    iget-object v8, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 644
    .end local v2    # "progress":Ljava/lang/String;
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_3
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_1

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "CryptKeeper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 661
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "progress":Ljava/lang/String;
    :catch_1
    move-exception v8

    goto :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1022
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1012
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/android/settings_ex/CryptKeeper;->mIgnoreBack:Z

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 409
    const-string v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, "state":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->isDebugView()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "trigger_restart_framework"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 412
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 413
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v5, Lcom/android/settings_ex/CryptKeeper;

    invoke-direct {v1, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 423
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->finish()V

    .line 448
    .end local v1    # "name":Landroid/content/ComponentName;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 429
    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :cond_3
    :goto_1
    const-string v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 437
    iget-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v6, 0x3370000

    invoke-virtual {v5, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 439
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 440
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 442
    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 443
    .local v0, "lastInstance":Ljava/lang/Object;
    instance-of v5, v0, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 444
    check-cast v3, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    .line 445
    .local v3, "retained":Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    iget-object v5, v3, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v5, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 446
    const-string v5, "CryptKeeper"

    const-string v6, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    .end local v0    # "lastInstance":Ljava/lang/Object;
    .end local v3    # "retained":Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 558
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 560
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 561
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 565
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

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 870
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 872
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 895
    .end local v0    # "password":Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 879
    .restart local v0    # "password":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v3, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 884
    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->setBackFunctionality(Z)V

    .line 886
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_3

    .line 887
    new-instance v3, Lcom/android/settings_ex/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings_ex/CryptKeeper;Lcom/android/settings_ex/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move v1, v2

    .line 893
    goto :goto_0

    .line 890
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1000
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 1001
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 550
    new-instance v0, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 551
    .local v0, "state":Lcom/android/settings_ex/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 553
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 457
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 458
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->setupUi()V

    .line 459
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 538
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 539
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 1018
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1006
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeper;->delayAudioNotification()V

    .line 1007
    const/4 v0, 0x0

    return v0
.end method
