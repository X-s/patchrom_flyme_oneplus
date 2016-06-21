.class public Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
.super Lcom/android/systemui_ex/SystemUI;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$6;,
        Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
    }
.end annotation


# static fields
.field private static final USER_PRESENT_INTENT:Landroid/content/Intent;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootCompleted:Z

.field private mBootSendUserPresent:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

.field private mExternallyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHideAnimation:Landroid/view/animation/Animation;

.field private mHideAnimationRun:Z

.field private mHiding:Z

.field private mInputRestricted:Z

.field private mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

.field private mKeyguardDonePending:Z

.field private final mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

.field private final mKeyguardStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/IKeyguardStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mOccluded:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field private mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field private mScreenOn:Z

.field private mSearchManager:Landroid/app/SearchManager;

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowing:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSwitchingUser:Z

.field private mSystemReady:Z

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mTrustedSoundId:I

.field private mUnlockSoundId:I

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mWM:Landroid/view/IWindowManager;

.field private mWaitingUntilKeyguardVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/SystemUI;-><init>()V

    .line 193
    iput-boolean v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 222
    iput-boolean v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 229
    iput-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 239
    iput-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 263
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    .line 282
    iput-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 284
    iput-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 285
    iput-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    .line 313
    new-instance v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;-><init>(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 465
    new-instance v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$2;-><init>(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1122
    new-instance v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$3;-><init>(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1156
    new-instance v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$4;-><init>(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    .line 1377
    new-instance v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$5;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$5;-><init>(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    .line 1592
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSwitchingUser:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->playTrustedSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetStateLocked()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleKeyguardDone(ZZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleSetOccluded(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;JJ)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleOnActivityDrawn()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->updateInputRestricted()V

    return-void
.end method

.method private adjustStatusBarLocked()V
    .locals 3

    .prologue
    .line 1462
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 1463
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 1466
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_2

    .line 1467
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Could not get status bar manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_1
    :goto_0
    return-void

    .line 1471
    :cond_2
    const/4 v0, 0x0

    .line 1472
    .local v0, "flags":I
    iget-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_3

    .line 1476
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 1477
    const/high16 v1, 0x2000000

    or-int/2addr v0, v1

    .line 1479
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1480
    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    .line 1488
    :cond_4
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 1489
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private cancelDoKeyguardLaterLocked()V
    .locals 1

    .prologue
    .line 736
    iget v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    .line 737
    return-void
.end method

.method private doKeyguardLaterLocked()V
    .locals 18

    .prologue
    .line 691
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 694
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v11, "screen_off_timeout"

    const/16 v16, 0x7530

    move/from16 v0, v16

    invoke-static {v2, v11, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    int-to-long v4, v11

    .line 698
    .local v4, "displayTimeout":J
    const-string v11, "lock_screen_lock_after_timeout"

    const/16 v16, 0x1388

    move/from16 v0, v16

    invoke-static {v2, v11, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    int-to-long v6, v11

    .line 703
    .local v6, "lockAfterTimeout":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v8

    .line 707
    .local v8, "policyTimeout":J
    const-wide/16 v16, 0x0

    cmp-long v11, v8, v16

    if-lez v11, :cond_0

    .line 709
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 710
    sub-long v16, v8, v4

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 715
    .local v12, "timeout":J
    :goto_0
    const-wide/16 v16, 0x0

    cmp-long v11, v12, v16

    if-gtz v11, :cond_1

    .line 717
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 718
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 733
    :goto_1
    return-void

    .line 712
    .end local v12    # "timeout":J
    :cond_0
    move-wide v12, v6

    .restart local v12    # "timeout":J
    goto :goto_0

    .line 721
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    add-long v14, v16, v12

    .line 722
    .local v14, "when":J
    new-instance v3, Landroid/content/Intent;

    const-string v11, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 723
    .local v3, "intent":Landroid/content/Intent;
    const-string v11, "seq"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 725
    const/high16 v11, 0x10000000

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 727
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    const/high16 v17, 0x10000000

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v11, v0, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 729
    .local v10, "sender":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v11, v0, v14, v15, v10}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private doKeyguardLocked(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 973
    iget-boolean v6, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v6, :cond_0

    .line 974
    const-string v4, "KeyguardViewMediator"

    const-string v5, "doKeyguard: not showing because externally disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :goto_0
    return-void

    .line 989
    :cond_0
    iget-object v6, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 990
    const-string v4, "KeyguardViewMediator"

    const-string v5, "doKeyguard: not showing because it is already showing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_0

    .line 996
    :cond_1
    const-string v6, "keyguard.no_require_sim"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_4

    move v3, v4

    .line 997
    .local v3, "requireSim":Z
    :goto_1
    iget-object v6, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    .line 999
    .local v0, "absent":Z
    iget-object v6, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v7, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v6, v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(Lcom/android/internal/telephony/IccCardConstants$State;)I

    move-result v6

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    .line 1001
    .local v1, "disabled":Z
    iget-object v6, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    if-eqz v3, :cond_5

    :cond_3
    move v2, v4

    .line 1004
    .local v2, "lockedOrMissing":Z
    :goto_2
    if-nez v2, :cond_6

    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1005
    const-string v4, "KeyguardViewMediator"

    const-string v5, "doKeyguard: not showing because device isn\'t provisioned and the sim is not locked or missing"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "absent":Z
    .end local v1    # "disabled":Z
    .end local v2    # "lockedOrMissing":Z
    .end local v3    # "requireSim":Z
    :cond_4
    move v3, v5

    .line 996
    goto :goto_1

    .restart local v0    # "absent":Z
    .restart local v1    # "disabled":Z
    .restart local v3    # "requireSim":Z
    :cond_5
    move v2, v5

    .line 1001
    goto :goto_2

    .line 1010
    .restart local v2    # "lockedOrMissing":Z
    :cond_6
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v2, :cond_7

    .line 1011
    const-string v4, "KeyguardViewMediator"

    const-string v5, "doKeyguard: not showing because lockscreen is off"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_7
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->checkVoldPassword()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1016
    const-string v4, "KeyguardViewMediator"

    const-string v6, "Not showing lock screen since just decrypted"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-direct {p0, v5}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1019
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->hideLocked()V

    goto :goto_0

    .line 1023
    :cond_8
    const-string v4, "KeyguardViewMediator"

    const-string v5, "doKeyguard: showing the lock screen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method private handleHide()V
    .locals 4

    .prologue
    .line 1399
    monitor-enter p0

    .line 1400
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleHide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 1403
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_1

    .line 1404
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    if-nez v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 1417
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    if-eqz v0, :cond_2

    .line 1419
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->notifyKeyguardShowHide(Z)V

    .line 1423
    :goto_1
    return-void

    .line 1407
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardGoingAwayRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1417
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1413
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleStartKeyguardExitAnimation(JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1421
    :cond_2
    const-string v0, "KeyguardViewMediator"

    const-string v1, "notifyKeyguardShowHide null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleKeyguardDone(ZZ)V
    .locals 5
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    .line 1218
    monitor-enter p0

    .line 1219
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1220
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    if-eqz p1, :cond_0

    .line 1223
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    .line 1225
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->changeKGNotificationsFlag()V

    .line 1229
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline()V

    .line 1232
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    .line 1234
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v2, :cond_1

    .line 1236
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    invoke-interface {v2, p1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1241
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 1243
    if-eqz p1, :cond_1

    .line 1246
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 1247
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 1248
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->updateInputRestricted()V

    .line 1252
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->handleHide()V

    .line 1254
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFingerprintUnlockInstance()Lcom/android/keyguard/FingerprintUnlock;

    move-result-object v1

    .line 1255
    .local v1, "fingerprintUnlock":Lcom/android/keyguard/FingerprintUnlock;
    if-eqz v1, :cond_2

    .line 1256
    invoke-virtual {v1}, Lcom/android/keyguard/FingerprintUnlock;->resetAttempts()V

    .line 1258
    :cond_2
    return-void

    .line 1220
    .end local v1    # "fingerprintUnlock":Lcom/android/keyguard/FingerprintUnlock;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1237
    :catch_0
    move-exception v0

    .line 1238
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to call onKeyguardExitResult("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    .line 1281
    monitor-enter p0

    .line 1283
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 1286
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1291
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1293
    :cond_0
    monitor-exit p0

    .line 1294
    return-void

    .line 1293
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 1

    .prologue
    .line 1523
    monitor-enter p0

    .line 1525
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOff()V

    .line 1526
    monitor-exit p0

    .line 1527
    return-void

    .line 1526
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 1534
    monitor-enter p0

    .line 1536
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 1537
    monitor-exit p0

    .line 1538
    return-void

    .line 1537
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleOnActivityDrawn()V
    .locals 1

    .prologue
    .line 1427
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-eqz v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->onActivityDrawn()V

    .line 1430
    :cond_0
    return-void
.end method

.method private handleReset()V
    .locals 1

    .prologue
    .line 1499
    monitor-enter p0

    .line 1501
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 1502
    monitor-exit p0

    .line 1503
    return-void

    .line 1502
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetOccluded(Z)V
    .locals 3
    .param p1, "isOccluded"    # Z

    .prologue
    .line 918
    monitor-enter p0

    .line 919
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v0, p1, :cond_0

    .line 920
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetOccluded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iput-boolean p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 922
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->setOccluded(Z)V

    .line 923
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 924
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 926
    :cond_0
    monitor-exit p0

    .line 927
    return-void

    .line 926
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 1346
    monitor-enter p0

    .line 1347
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 1349
    monitor-exit p0

    .line 1375
    :goto_0
    return-void

    .line 1351
    :cond_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1355
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 1356
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 1357
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1359
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1360
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1361
    invoke-virtual {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->userActivity()V

    .line 1364
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1366
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1367
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1368
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardDisplayManager;->show()V

    .line 1370
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    if-eqz v0, :cond_1

    .line 1371
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/controlpanel/OPControlPanel;->notifyKeyguardShowHide(Z)V

    goto :goto_0

    .line 1367
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1373
    :cond_1
    const-string v0, "KeyguardViewMediator"

    const-string v1, "mControlPanel null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleStartKeyguardExitAnimation(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 1433
    monitor-enter p0

    .line 1435
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHiding:Z

    if-nez v0, :cond_1

    .line 1436
    monitor-exit p0

    .line 1459
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 1439
    const-string v0, "KeyguardViewMediator"

    const-string v1, "handleStartKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->playSounds(Z)V

    .line 1446
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1447
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->hide(JJ)V

    .line 1448
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 1449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 1450
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1451
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V

    .line 1452
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1453
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1455
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    const-string v0, "KeyguardViewMediator"

    const-string v1, "doKeyguard again when sim pin is still locked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1453
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleVerifyUnlock()V
    .locals 1

    .prologue
    .line 1510
    monitor-enter p0

    .line 1512
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 1513
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->verifyUnlock()V

    .line 1514
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->updateActivityLockScreenState()V

    .line 1515
    monitor-exit p0

    .line 1516
    return-void

    .line 1515
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    .line 1103
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1104
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1105
    return-void
.end method

.method private maybeSendUserPresentBroadcast()V
    .locals 1

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 762
    :cond_0
    return-void
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1072
    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 3
    .param p1, "result"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1082
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1083
    return-void
.end method

.method private playSound(I)V
    .locals 8
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1308
    if-nez p1, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1310
    .local v7, "cr":Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 1314
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 1315
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    .line 1316
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    .line 1320
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0
.end method

.method private playSounds(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    .line 1299
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_0

    .line 1300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    .line 1305
    :goto_0
    return-void

    .line 1304
    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSoundId:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->playSound(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private playTrustedSound()V
    .locals 1

    .prologue
    .line 1328
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_0

    .line 1332
    :goto_0
    return-void

    .line 1331
    :cond_0
    iget v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->playSound(I)V

    goto :goto_0
.end method

.method private resetKeyguardDonePendingLocked()V
    .locals 2

    .prologue
    .line 1541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    .line 1542
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1543
    return-void
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    .line 1050
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1051
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1052
    return-void
.end method

.method private sendUserPresentBroadcast()V
    .locals 8

    .prologue
    .line 1261
    monitor-enter p0

    .line 1262
    :try_start_0
    iget-boolean v5, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    if-eqz v5, :cond_0

    .line 1263
    new-instance v0, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 1264
    .local v0, "currentUser":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1266
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 1267
    .local v4, "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1268
    .local v2, "ui":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->USER_PRESENT_INTENT:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1273
    .end local v0    # "currentUser":Landroid/os/UserHandle;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    .end local v3    # "um":Landroid/os/UserManager;
    .end local v4    # "userHandles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1271
    :cond_0
    const/4 v5, 0x1

    :try_start_1
    iput-boolean v5, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    .line 1273
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1274
    return-void
.end method

.method private setShowingLocked(Z)V
    .locals 5
    .param p1, "showing"    # Z

    .prologue
    .line 1604
    iget-boolean v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eq p1, v3, :cond_1

    .line 1605
    iput-boolean p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    .line 1607
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1608
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1609
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v3, p1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1608
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1611
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "KeyguardViewMediator"

    const-string v4, "Failed to call onShowingStateChanged"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1614
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 1615
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v3}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 1617
    :cond_1
    return-void
.end method

.method private setupLocked()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 535
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    .line 536
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mWM:Landroid/view/IWindowManager;

    .line 537
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v6, "trust"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/trust/TrustManager;

    iput-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 539
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const-string v6, "show keyguard"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 540
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 542
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 544
    new-instance v3, Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v6, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/keyguard/KeyguardDisplayManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDisplayManager:Lcom/android/keyguard/KeyguardDisplayManager;

    .line 546
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    .line 548
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 550
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 551
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 554
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v4

    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->setShowingLocked(Z)V

    .line 555
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v3}, Landroid/app/trust/TrustManager;->reportKeyguardShowingChanged()V

    .line 557
    new-instance v3, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v6, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v8, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, v6, v7, v8}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .line 559
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 561
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 563
    new-instance v3, Landroid/media/SoundPool;

    invoke-direct {v3, v4, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    .line 564
    const-string v3, "lock_sound"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 565
    .local v2, "soundPath":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 566
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v3, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSoundId:I

    .line 568
    :cond_0
    if-eqz v2, :cond_1

    iget v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSoundId:I

    if-nez v3, :cond_2

    .line 569
    :cond_1
    const-string v3, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to load lock sound from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_2
    const-string v3, "unlock_sound"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    if-eqz v2, :cond_3

    .line 573
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v3, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    .line 575
    :cond_3
    if-eqz v2, :cond_4

    iget v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v3, :cond_5

    .line 576
    :cond_4
    const-string v3, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed to load unlock sound from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_5
    const-string v3, "trusted_sound"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 579
    if-eqz v2, :cond_6

    .line 580
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    invoke-virtual {v3, v2, v4}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    .line 582
    :cond_6
    if-eqz v2, :cond_7

    iget v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mTrustedSoundId:I

    if-nez v3, :cond_8

    .line 583
    :cond_7
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to load trusted sound from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_8
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 588
    .local v1, "lockSoundDefaultAttenuation":I
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-float v3, v1

    const/high16 v6, 0x41a00000    # 20.0f

    div-float/2addr v3, v6

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    iput v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockSoundVolume:F

    .line 590
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v4, 0x10a002b

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHideAnimation:Landroid/view/animation/Animation;

    .line 592
    return-void

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "lockSoundDefaultAttenuation":I
    .end local v2    # "soundPath":Ljava/lang/String;
    :cond_9
    move v3, v5

    .line 554
    goto/16 :goto_0
.end method

.method private shouldWaitForProvisioning()Z
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showLocked(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1092
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1093
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1094
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1095
    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 2

    .prologue
    .line 1336
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    :goto_1
    return-void

    .line 1336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1337
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private updateInputRestricted()V
    .locals 1

    .prologue
    .line 949
    monitor-enter p0

    .line 950
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 951
    monitor-exit p0

    .line 952
    return-void

    .line 951
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateInputRestrictedLocked()V
    .locals 6

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isInputRestricted()Z

    move-result v2

    .line 955
    .local v2, "inputRestricted":Z
    iget-boolean v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    if-eq v4, v2, :cond_0

    .line 956
    iput-boolean v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mInputRestricted:Z

    .line 958
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 959
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 960
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/policy/IKeyguardStateCallback;

    invoke-interface {v4, v2}, Lcom/android/internal/policy/IKeyguardStateCallback;->onInputRestrictedStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 959
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "KeyguardViewMediator"

    const-string v5, "Failed to call onDeviceProvisioned"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 966
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1061
    return-void
.end method


# virtual methods
.method public addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardStateCallback;

    .prologue
    .line 1620
    monitor-enter p0

    .line 1621
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1623
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onSimSecureStateChanged(Z)V

    .line 1624
    iget-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardStateCallback;->onShowingStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1628
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1629
    return-void

    .line 1625
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onShowingStateChanged or onSimSecureStateChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1628
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1042
    return-void
.end method

.method public doKeyguardTimeout(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0xd

    .line 934
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 935
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 936
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 937
    return-void
.end method

.method public getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1

    .prologue
    .line 1589
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method public handleDismiss()V
    .locals 1

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 1038
    :cond_0
    return-void
.end method

.method public isDismissable()Z
    .locals 1

    .prologue
    .line 1546
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 945
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1553
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(ZZ)V
    .locals 6
    .param p1, "authenticated"    # Z
    .param p2, "wakeup"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1143
    const-string v3, "KeyguardViewMediator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyguardDone("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const v3, 0x11170

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1145
    iget-object v4, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v5, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1146
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1147
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    move v3, v2

    .line 1145
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public onActivityDrawn()V
    .locals 2

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1587
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    .line 1562
    monitor-enter p0

    .line 1563
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mBootCompleted:Z

    .line 1564
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mBootSendUserPresent:Z

    if-eqz v0, :cond_0

    .line 1565
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V

    .line 1567
    :cond_0
    monitor-exit p0

    .line 1568
    return-void

    .line 1567
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStarted()V
    .locals 1

    .prologue
    .line 769
    monitor-enter p0

    .line 770
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    .line 773
    :cond_0
    monitor-exit p0

    .line 774
    return-void

    .line 773
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onDreamingStopped()V
    .locals 1

    .prologue
    .line 780
    monitor-enter p0

    .line 781
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 782
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 784
    :cond_0
    monitor-exit p0

    .line 785
    return-void

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onScreenTurnedOff(I)V
    .locals 4
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x0

    .line 647
    monitor-enter p0

    .line 648
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 651
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetKeyguardDonePendingLocked()V

    .line 652
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHideAnimationRun:Z

    .line 657
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 660
    .local v1, "lockImmediately":Z
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->notifyScreenOffLocked()V

    .line 662
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_3

    .line 665
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 670
    iget-boolean v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v2, :cond_2

    .line 671
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->hideLocked()V

    .line 681
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 682
    iget-object v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurndOff(I)V

    .line 683
    return-void

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "KeyguardViewMediator"

    const-string v3, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 681
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lockImmediately":Z
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 673
    .restart local v1    # "lockImmediately":Z
    :cond_3
    :try_start_4
    iget-boolean v2, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_4

    .line 674
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_1

    .line 675
    :cond_4
    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    if-nez v1, :cond_6

    .line 677
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLaterLocked()V

    goto :goto_1

    .line 679
    :cond_6
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 743
    monitor-enter p0

    .line 744
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mScreenOn:Z

    .line 745
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->cancelDoKeyguardLaterLocked()V

    .line 747
    if-eqz p1, :cond_0

    .line 748
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 750
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchScreenTurnedOn()V

    .line 752
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 753
    return-void

    .line 750
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSystemReady()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSearchManager:Landroid/app/SearchManager;

    .line 608
    monitor-enter p0

    .line 609
    :try_start_0
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSystemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mSystemReady:Z

    .line 611
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 622
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 630
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V

    .line 633
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockoutAttemptDeadline()V

    .line 635
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 638
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->maybeSendUserPresentBroadcast()V

    .line 639
    return-void

    .line 627
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    goto :goto_0

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public registerStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui_ex/statusbar/phone/ScrimController;)Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p1, "phoneStatusBar"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "statusBarWindowManager"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;
    .param p4, "scrimController"    # Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 1574
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->registerStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui_ex/statusbar/phone/ScrimController;)V

    .line 1576
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method public setCurrentUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    .line 1120
    return-void
.end method

.method public setKeyguardEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 793
    monitor-enter p0

    .line 794
    :try_start_0
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyguardEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    const-string v1, "KeyguardViewMediator"

    const-string v2, "current mode is SecurityMode, ignore hide keyguard"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    monitor-exit p0

    .line 856
    :goto_0
    return-void

    .line 801
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    .line 803
    if-nez p1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_3

    .line 804
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v1, :cond_1

    .line 808
    monitor-exit p0

    goto :goto_0

    .line 855
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 812
    :cond_1
    :try_start_1
    const-string v1, "KeyguardViewMediator"

    const-string v2, "remembering to reshow, hiding keyguard, disabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 817
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 855
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 820
    :cond_3
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_2

    .line 822
    const-string v1, "KeyguardViewMediator"

    const-string v2, "previously hidden, reshowing, reenabling status bar expansion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    .line 825
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->updateInputRestrictedLocked()V

    .line 827
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v1, :cond_4

    .line 828
    const-string v1, "KeyguardViewMediator"

    const-string v2, "onKeyguardExitResult(false), resetting"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 834
    :goto_2
    const/4 v1, 0x0

    :try_start_3
    iput-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 835
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_1

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 837
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->showLocked(Landroid/os/Bundle;)V

    .line 842
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    .line 843
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 844
    const-string v1, "KeyguardViewMediator"

    const-string v2, "waiting until mWaitingUntilKeyguardVisible is false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :goto_3
    iget-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    .line 847
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 848
    :catch_1
    move-exception v0

    .line 849
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public setOccluded(Z)V
    .locals 6
    .param p1, "isOccluded"    # Z

    .prologue
    const/16 v5, 0xc

    const/4 v2, 0x0

    .line 908
    iget-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mOccluded:Z

    if-eq v1, p1, :cond_0

    const-string v1, "KeyguardViewMediator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOccluded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 910
    iget-object v3, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v5, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 911
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 912
    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    move v1, v2

    .line 910
    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 596
    monitor-enter p0

    .line 597
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->setupLocked()V

    .line 598
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    const-class v0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 600
    const-class v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    iput-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mControlPanel:Lcom/android/systemui_ex/controlpanel/OPControlPanel;

    .line 601
    return-void

    .line 598
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 9
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 1580
    iget-object v7, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x12

    new-instance v1, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;

    const/4 v6, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(JJLcom/android/systemui_ex/keyguard/KeyguardViewMediator$1;)V

    invoke-virtual {v7, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1582
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1583
    return-void
.end method

.method public userActivity()V
    .locals 4

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 532
    return-void
.end method

.method public verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardExitCallback;

    .prologue
    .line 862
    monitor-enter p0

    .line 864
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->shouldWaitForProvisioning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 866
    const-string v1, "KeyguardViewMediator"

    const-string v2, "ignoring because device isn\'t provisioned"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 894
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 895
    return-void

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 894
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 872
    :cond_0
    :try_start_3
    iget-boolean v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v1, :cond_1

    .line 876
    const-string v1, "KeyguardViewMediator"

    const-string v2, "verifyUnlock called when not externally disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 878
    const/4 v1, 0x0

    :try_start_4
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 879
    :catch_1
    move-exception v0

    .line 880
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 882
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    if-eqz v1, :cond_2

    .line 883
    const-string v1, "KeyguardViewMediator"

    const-string v2, "verifyUnlock called when mExitSecureCallback isn\'t null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 886
    const/4 v1, 0x0

    :try_start_6
    invoke-interface {p1, v1}, Lcom/android/internal/policy/IKeyguardExitCallback;->onKeyguardExitResult(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 887
    :catch_2
    move-exception v0

    .line 888
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v1, "KeyguardViewMediator"

    const-string v2, "Failed to call onKeyguardExitResult(false)"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 891
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iput-object p1, p0, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->mExitSecureCallback:Lcom/android/internal/policy/IKeyguardExitCallback;

    .line 892
    invoke-direct {p0}, Lcom/android/systemui_ex/keyguard/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method
