.class public Lcom/android/internal/policy/impl/OemPhoneWindowManager;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;,
        Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;,
        Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;
    }
.end annotation


# static fields
.field private static final ACTION_KEY_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field private static final ACTION_SCREEN_SHOT:Ljava/lang/String; = "oem.intent.action.SCREEN_SHOT"

.field private static final DEBUG:Z

.field private static final KEYLOCK_MODE_BASE:I = 0x8

.field private static final KEYLOCK_MODE_FOOT:I = 0x4

.field private static final KEY_LOCK_MODE_HOME:I = 0x3

.field private static final KEY_LOCK_MODE_NORMAL:I = 0x0

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field private static final LOCK_TASK_END_DELAY:I = 0x7d0

.field private static final MSG_PANEL_STATUS:I = 0x1

.field public static mCurrentKeyMode:I

.field private static mDoublePiontHome:Z

.field static mFingerPrintBehavior:I

.field public static mHomeFind:Z

.field static mKeyguardState:Z

.field public static mLockHomeUp:I

.field private static mShotPiontHome:Z


# instance fields
.field private HomeConsume:Z

.field private mBackLongPress:Ljava/lang/Runnable;

.field private mDelay:Z

.field mDownTime:J

.field private mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

.field private mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

.field mHomeEvent:I

.field mHomeRepateBeavhaver:Z

.field private mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

.field private mKeyguardEnabled:Z

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMenuRepateBeavhaver:Z

.field mMenuUp:Z

.field mOemBaseReceiver:Landroid/content/BroadcastReceiver;

.field mSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

.field mShotScreenHelper:Lcom/android/internal/policy/impl/OemShotScreenHelper;

.field private mT:Landroid/telephony/TelephonyManager;

.field telecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    sput v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    .line 88
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShotPiontHome:Z

    .line 90
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDoublePiontHome:Z

    .line 92
    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    .line 95
    sput v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    .line 96
    sput-boolean v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeFind:Z

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    .line 118
    sput v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerPrintBehavior:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    .line 71
    new-instance v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

    .line 99
    new-instance v0, Lcom/android/internal/policy/impl/OemShotScreenHelper;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/OemShotScreenHelper;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    .line 109
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDelay:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuRepateBeavhaver:Z

    .line 114
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeRepateBeavhaver:Z

    .line 142
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mDownTime:J

    .line 146
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuUp:Z

    .line 405
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->HomeConsume:Z

    .line 651
    new-instance v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mOemBaseReceiver:Landroid/content/BroadcastReceiver;

    .line 683
    new-instance v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$2;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    .line 805
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardEnabled:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/OemPhoneWindowManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->triggerVirtualKeypress(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Lcom/android/internal/policy/impl/FingerprintUnlock;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mT:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/OemPhoneWindowManager;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->toggleRecentApps()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    return v0
.end method

.method private cancelPreloadRecentApps()V
    .locals 4

    .prologue
    .line 390
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 392
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 393
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 394
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when toggling recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 409
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 410
    return-object v0
.end method

.method private preloadRecentApps()V
    .locals 4

    .prologue
    .line 376
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 378
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 379
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 380
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private togglePanel()V
    .locals 4

    .prologue
    .line 336
    :try_start_0
    const-string v2, "WindowManager"

    const-string v3, "togglePanel"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 338
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 339
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    const-string v3, "RemoteException when toggling Panel"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private toggleRecentApps()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 348
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPreloadedRecentApps:Z

    .line 349
    const/4 v1, 0x0

    .line 350
    .local v1, "isCall":Z
    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.dialer/com.android.incallui.InCallActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.incallui/com.android.incallui.InCallActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 355
    :goto_0
    if-eqz v1, :cond_2

    .line 373
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 350
    goto :goto_0

    .line 360
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    .line 361
    .local v2, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v2, :cond_3

    .line 362
    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V

    .line 366
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/PowerManager;->userActivity(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 368
    .end local v2    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v4, "RemoteException when toggling recent apps"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_1
.end method

.method private triggerVirtualKeypress(I)V
    .locals 15
    .param p1, "keyCode"    # I

    .prologue
    .line 549
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    .line 550
    .local v0, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 552
    .local v2, "now":J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x8

    const/16 v13, 0x2002

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 555
    .local v1, "downEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v14

    .line 557
    .local v14, "upEvent":Landroid/view/KeyEvent;
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 558
    const/4 v4, 0x0

    invoke-virtual {v0, v14, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 559
    return-void
.end method


# virtual methods
.method public enableKeyguard(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 810
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableKeyguard  enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardEnabled:Z

    .line 812
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->enableKeyguard(Z)V

    .line 813
    return-void
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public goingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 797
    const-string v0, "WindowManager"

    const-string v1, "goingToSleep  ondestory fingerprintUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->goingToSleep(I)V

    .line 800
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardEnabled:Z

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resume(Z)V

    .line 803
    :cond_0
    return-void
.end method

.method public handleDoubleTapOnHome()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 675
    const-string v0, "WindowManager"

    const-string v1, "handleDoubleTapOnHome"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeConsumed:Z

    .line 677
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->togglePanel()V

    .line 680
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 681
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 122
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    .line 123
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    .local v1, "keyModeFilter":Landroid/content/IntentFilter;
    const-string v2, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyLockModeReceiver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$KeyLockModeReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    new-instance v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Lcom/android/internal/policy/impl/OemPhoneWindowManager$1;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "oem.intent.action.SCREEN_SHOT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mOemBaseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 131
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mShotScreenHelper:Lcom/android/internal/policy/impl/OemShotScreenHelper;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v2, v3, p1}, Lcom/android/internal/policy/impl/OemShotScreenHelper;->init(Landroid/os/Handler;Landroid/content/Context;)V

    .line 133
    new-instance v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

    .line 134
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSettingsObserver:Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$SettingsObserver;->observe()V

    .line 136
    new-instance v2, Lcom/android/internal/policy/impl/FingerprintUnlock;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/android/internal/policy/impl/FingerprintUnlock;-><init>(Lcom/android/internal/policy/impl/FingerprintUnlock$Callback;ILandroid/os/Handler;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    .line 137
    iget-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mT:Landroid/telephony/TelephonyManager;

    .line 139
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    return-void
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 13
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 294
    sget v10, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 295
    const-wide/16 v10, 0x0

    .line 331
    :goto_0
    return-wide v10

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->keyguardOn()Z

    move-result v4

    .line 299
    .local v4, "keyguardOn":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 300
    .local v3, "keyCode":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 301
    .local v7, "repeatCount":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    .line 302
    .local v6, "metaState":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_4

    const/4 v2, 0x1

    .line 303
    .local v2, "down":Z
    :goto_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    .line 304
    .local v1, "canceled":Z
    const/16 v10, 0x52

    if-ne v3, v10, :cond_5

    const/4 v5, 0x1

    .line 305
    .local v5, "menuKeyCode":Z
    :goto_2
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 306
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_3
    if-eqz v0, :cond_7

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 307
    .local v9, "type":I
    :goto_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v8

    .line 309
    .local v8, "source":I
    sget-boolean v10, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 310
    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "interceptKeyTi keyCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " down="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " repeatCount="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " keyguardOn="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " mHomePressed="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomePressed:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " canceled="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " metaState:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    if-eqz v5, :cond_3

    .line 316
    const/16 v10, 0x7ed

    if-eq v9, v10, :cond_2

    const/16 v10, 0x7d9

    if-eq v9, v10, :cond_2

    iget v10, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v10, v10, 0x400

    if-eqz v10, :cond_3

    .line 320
    :cond_2
    const/16 v10, 0x2002

    if-ne v8, v10, :cond_8

    .line 323
    const-string v10, "WindowManager"

    const-string v11, "don\'t ignore the menu key if fingerprint unlock was failed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_3
    invoke-super/range {p0 .. p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v10

    goto/16 :goto_0

    .line 302
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "canceled":Z
    .end local v2    # "down":Z
    .end local v5    # "menuKeyCode":Z
    .end local v8    # "source":I
    .end local v9    # "type":I
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 304
    .restart local v1    # "canceled":Z
    .restart local v2    # "down":Z
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 305
    .restart local v5    # "menuKeyCode":Z
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 306
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 326
    .restart local v8    # "source":I
    .restart local v9    # "type":I
    :cond_8
    const-wide/16 v10, -0x1

    goto/16 :goto_0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 12
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 150
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 151
    const/4 v8, 0x1

    .line 288
    :goto_0
    return v8

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 155
    .local v3, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    const/4 v7, 0x1

    .line 156
    .local v7, "up":Z
    :goto_1
    const/high16 v8, 0x20000000

    and-int/2addr v8, p2

    if-eqz v8, :cond_4

    const/4 v2, 0x1

    .line 157
    .local v2, "interactive":Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v6

    .line 158
    .local v6, "source":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    .line 159
    .local v5, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_5

    const/4 v0, 0x1

    .line 161
    .local v0, "down":Z
    :goto_3
    sget-boolean v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 162
    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "interceptKeyTq keycode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " interactive="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " down ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " source="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " repeatCount ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    const/4 v8, 0x3

    if-ne v3, v8, :cond_6

    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    if-eqz v8, :cond_6

    .line 170
    if-eqz v7, :cond_2

    .line 171
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 172
    const/4 v8, 0x0

    sput v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    .line 175
    :cond_2
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeFind:Z

    .line 176
    const/4 v8, 0x0

    goto :goto_0

    .line 155
    .end local v0    # "down":Z
    .end local v2    # "interactive":Z
    .end local v5    # "repeatCount":I
    .end local v6    # "source":I
    .end local v7    # "up":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 156
    .restart local v7    # "up":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    .line 159
    .restart local v2    # "interactive":Z
    .restart local v5    # "repeatCount":I
    .restart local v6    # "source":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    .line 178
    .restart local v0    # "down":Z
    :cond_6
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_8

    .line 180
    const/4 v8, 0x4

    if-eq v3, v8, :cond_7

    const/4 v8, 0x3

    if-eq v3, v8, :cond_7

    const/16 v8, 0x52

    if-ne v3, v8, :cond_8

    .line 182
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 185
    :cond_8
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9

    .line 186
    const/4 v8, 0x3

    if-ne v3, v8, :cond_9

    .line 187
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 191
    :cond_9
    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    const/16 v9, 0x8

    if-le v8, v9, :cond_c

    .line 192
    const/16 v8, 0x52

    if-ne v3, v8, :cond_a

    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a

    .line 193
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 195
    :cond_a
    const/4 v8, 0x3

    if-ne v3, v8, :cond_b

    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    shr-int/lit8 v8, v8, 0x1

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 196
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 198
    :cond_b
    const/4 v8, 0x4

    if-ne v3, v8, :cond_c

    sget v8, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mCurrentKeyMode:I

    shr-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 199
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 202
    :cond_c
    and-int/lit8 p2, p2, -0x3

    .line 203
    if-eqz v2, :cond_e

    const/4 v8, 0x4

    if-eq v3, v8, :cond_d

    const/4 v8, 0x3

    if-eq v3, v8, :cond_d

    const/16 v8, 0x52

    if-ne v3, v8, :cond_e

    :cond_d
    if-nez v7, :cond_e

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v8

    if-nez v8, :cond_e

    const/16 v8, 0x101

    if-ne v6, v8, :cond_e

    .line 207
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 210
    :cond_e
    const/16 v8, 0x52

    if-eq v3, v8, :cond_f

    const/4 v8, 0x4

    if-ne v3, v8, :cond_11

    .line 211
    :cond_f
    if-eqz v2, :cond_10

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-eqz v8, :cond_10

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-nez v8, :cond_11

    .line 212
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 216
    :cond_11
    const/4 v8, 0x3

    if-eq v3, v8, :cond_12

    const/4 v8, 0x4

    if-ne v3, v8, :cond_16

    :cond_12
    const/16 v8, 0x101

    if-ne v6, v8, :cond_16

    .line 218
    if-eqz v7, :cond_13

    .line 219
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 221
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->getMessageForKeyEvent(Landroid/view/KeyEvent;)Landroid/os/Message;

    move-result-object v4

    .line 222
    .local v4, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v10, 0x3c

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 223
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 225
    .end local v4    # "msg":Landroid/os/Message;
    :cond_13
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 229
    const/4 v8, 0x4

    if-ne v3, v8, :cond_14

    .line 230
    if-nez v0, :cond_15

    .line 231
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    :cond_14
    :goto_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 245
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 232
    :cond_15
    if-eqz v0, :cond_14

    if-nez v5, :cond_14

    .line 234
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v8

    if-eqz v8, :cond_14

    .line 235
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mBackLongPress:Ljava/lang/Runnable;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    .line 249
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_16
    const/16 v8, 0x52

    if-ne v3, v8, :cond_1a

    const/16 v8, 0x101

    if-ne v6, v8, :cond_1a

    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v8

    if-nez v8, :cond_1a

    .line 252
    if-eqz v7, :cond_19

    .line 253
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuRepateBeavhaver:Z

    if-eqz v8, :cond_17

    .line 254
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 256
    :cond_17
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuUp:Z

    .line 257
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 258
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 261
    :cond_18
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 262
    .restart local v4    # "msg":Landroid/os/Message;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 263
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v10, 0x3c

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 264
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 266
    .end local v4    # "msg":Landroid/os/Message;
    :cond_19
    if-nez v7, :cond_1a

    .line 267
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->preloadRecentApps()V

    .line 268
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 269
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuRepateBeavhaver:Z

    .line 270
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mMenuUp:Z

    .line 271
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 272
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 273
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 274
    .restart local v4    # "msg":Landroid/os/Message;
    iput-object p1, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 275
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 276
    iget-object v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v10, 0x190

    invoke-virtual {v8, v4, v10, v11}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 277
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 282
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1a
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->swapeFromButton:Z

    .line 284
    if-nez v2, :cond_1b

    const/16 v8, 0x86

    if-ne v3, v8, :cond_1b

    .line 285
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 288
    :cond_1b
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v8

    goto/16 :goto_0
.end method

.method public keepScreenOn(I)V
    .locals 0
    .param p1, "millis"    # I

    .prologue
    .line 855
    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 3
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 666
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    .line 667
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.LID_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "lidOpen"

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 669
    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 671
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->notifyLidSwitchChanged(JZ)V

    .line 672
    return-void

    .line 668
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAbortFingerprint()V
    .locals 3

    .prologue
    .line 826
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAbortFingerprint mScreenOnFully="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAwake ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_1

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 830
    :cond_1
    return-void
.end method

.method public onIdentified(IZI)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "updated"    # Z
    .param p3, "mFingerPrintBehavior"    # I

    .prologue
    const-wide/16 v6, 0x64

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 708
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onIdentified  success + mScreenOnFully "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyguard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAwake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resetAttempts()V

    .line 715
    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v0, :cond_3

    .line 717
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->keyguardDone(ZZ)V

    .line 719
    sput v5, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mLockHomeUp:I

    .line 720
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    new-instance v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$3;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 728
    sput-boolean v4, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHomeFind:Z

    .line 733
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-nez v0, :cond_4

    :cond_1
    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v0, :cond_4

    .line 734
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    new-instance v1, Lcom/android/internal/policy/impl/OemPhoneWindowManager$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$4;-><init>(Lcom/android/internal/policy/impl/OemPhoneWindowManager;)V

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 744
    :cond_2
    :goto_1
    return-void

    .line 730
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRestartFpId()V

    goto :goto_0

    .line 741
    :cond_4
    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    goto :goto_1
.end method

.method public onNomatch(IIIII)V
    .locals 7
    .param p1, "attempts"    # I
    .param p2, "mFingerPrintBehavior"    # I
    .param p3, "result"    # I
    .param p4, "id"    # I
    .param p5, "userdata"    # I

    .prologue
    const/4 v6, 0x3

    const-wide/16 v4, 0xc8

    const/16 v1, 0x8

    .line 750
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 754
    const/4 p2, 0x0

    .line 755
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onNomatch attempts "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isKeyguardOn ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScreenOnFully "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAwake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v0, 0x2

    if-gt p1, v0, :cond_3

    .line 759
    const/16 v0, 0x32

    if-lt p4, v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 763
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040762

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->showNoMatchView(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->removeMessages(I)V

    .line 768
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    invoke-virtual {v0, v6, v4, v5}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 782
    :cond_2
    :goto_0
    return-void

    .line 771
    :cond_3
    const/16 v0, 0x23

    if-ge p4, v0, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_2

    .line 772
    :cond_4
    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v0, :cond_2

    .line 774
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 775
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mAwake:Z

    if-nez v0, :cond_6

    .line 776
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 778
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->identifyPause()V

    .line 779
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public onResumeFingerprint(Z)V
    .locals 3
    .param p1, "interactive"    # Z

    .prologue
    .line 816
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResumeFingerprint  interactive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mSystemReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v0, :cond_0

    .line 818
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resume(Z)V

    .line 823
    :cond_0
    return-void
.end method

.method public onStatus(II)V
    .locals 2
    .param p1, "mStatus"    # I
    .param p2, "userData"    # I

    .prologue
    .line 835
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mHandler:Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/OemPhoneWindowManager$OemHandler;->sendEmptyMessage(I)Z

    .line 849
    :cond_0
    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 3
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 787
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    .line 789
    const-string v0, "WindowManager"

    const-string v1, "startKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/FingerprintUnlock;->onRelease()V

    .line 792
    return-void
.end method

.method public systemBooted()V
    .locals 2

    .prologue
    .line 697
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->systemBooted()V

    .line 698
    const-string v0, "WindowManager"

    const-string v1, "systemBooted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mFingerprintUnlock:Lcom/android/internal/policy/impl/FingerprintUnlock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/FingerprintUnlock;->resume(Z)V

    .line 702
    :cond_0
    return-void
.end method

.method public updateOemSettings()V
    .locals 6

    .prologue
    .line 608
    iget-object v3, p0, Lcom/android/internal/policy/impl/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 609
    .local v2, "resolver":Landroid/content/ContentResolver;
    const-string v3, "oem_acc_key_define"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 614
    .local v1, "mMenubehavior":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 616
    :try_start_0
    const-string v3, "proc/s1302/key_rep"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :goto_0
    return-void

    .line 617
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 624
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    const-string v3, "proc/s1302/key_rep"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 625
    :catch_1
    move-exception v0

    .line 627
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
