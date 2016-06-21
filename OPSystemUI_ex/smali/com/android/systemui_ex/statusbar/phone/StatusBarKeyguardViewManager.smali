.class public Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
.super Ljava/lang/Object;
.source "StatusBarKeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field private mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

.field private mContainer:Landroid/view/ViewGroup;

.field private final mContext:Landroid/content/Context;

.field private mFirstUpdate:Z

.field private mIsKeyguardGoingAway:Z

.field private mLastBouncerDismissible:Z

.field private mLastBouncerShowing:Z

.field private mLastOccluded:Z

.field private mLastShowing:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

.field private mOccluded:Z

.field mOnShownRunnable:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;

.field private mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field private mScreenOn:Z

.field private mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

.field private mShowing:Z

.field private mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "StatusBarKeyguardViewManager"

    sput-object v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOn:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mIsKeyguardGoingAway:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 409
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$7;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$7;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    .line 85
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    .line 86
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 87
    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 88
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/keyguard/ViewMediatorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mIsKeyguardGoingAway:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->callbackAfterDraw(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/ScrimController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method private callbackAfterDraw(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->checkIsKeyguardGoingAway(Lcom/android/internal/policy/IKeyguardShowCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/internal/policy/IKeyguardShowCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private checkIsKeyguardGoingAway(Lcom/android/internal/policy/IKeyguardShowCallback;)Z
    .locals 4
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mIsKeyguardGoingAway:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOnShownRunnable:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOnShownRunnable:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;

    .line 205
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOnShownRunnable:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;->setCallback(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$2;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    :cond_0
    sget-object v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "wait for Keyguard going away"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOnShownRunnable:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOnShownRunnable:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    .line 219
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOnShownRunnable:Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$OnShownRunnable;

    .line 220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private executeAfterKeyguardGoneAction()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 356
    :cond_0
    return-void
.end method

.method private getNavBarShowDelay()J
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isKeyguardFadingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    .line 405
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x140

    goto :goto_0
.end method

.method private showBouncer()V
    .locals 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 141
    return-void
.end method

.method private showBouncerOrKeyguard()V
    .locals 3

    .prologue
    .line 117
    sget-object v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " showBouncerOrKeyguard needsFullscreenBouncer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->needsFullscreenBouncer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "showBouncerOrKeyguard showKeyguard, hide notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showBackdrop()V

    .line 124
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hideNotification()V

    .line 128
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showKeyguard()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->prepare()V

    goto :goto_0
.end method

.method private updateStates()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 417
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v5

    .line 418
    .local v5, "vis":I
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 419
    .local v4, "showing":Z
    iget-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 420
    .local v2, "occluded":Z
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v8}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v1

    .line 421
    .local v1, "bouncerShowing":Z
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v8}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result v8

    if-nez v8, :cond_11

    move v0, v6

    .line 423
    .local v0, "bouncerDismissible":Z
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "updateStates, vis:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Showing:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",LastShowing:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",Occluded:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",LastOccluded:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",BouncerShow:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",LastBouncerShow:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",BouncerDismiss:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",LastBouncerDismiss:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 433
    .local v3, "sb":Ljava/lang/StringBuilder;
    sget-object v8, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    if-nez v0, :cond_0

    if-nez v4, :cond_12

    :cond_0
    move v8, v6

    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-nez v9, :cond_13

    :cond_1
    move v9, v6

    :goto_2
    if-ne v8, v9, :cond_2

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v8, :cond_4

    .line 437
    :cond_2
    if-nez v0, :cond_3

    if-nez v4, :cond_14

    .line 438
    :cond_3
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const v9, -0x400001

    and-int/2addr v9, v5

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 443
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    if-nez v2, :cond_5

    if-eqz v1, :cond_15

    :cond_5
    move v8, v6

    :goto_4
    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_6

    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-eqz v9, :cond_16

    :cond_6
    move v9, v6

    :goto_5
    if-ne v8, v9, :cond_7

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v8, :cond_9

    .line 445
    :cond_7
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 446
    if-eqz v4, :cond_8

    if-nez v2, :cond_8

    if-eqz v1, :cond_17

    .line 447
    :cond_8
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->getNavBarShowDelay()J

    move-result-wide v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/view/ViewGroup;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 456
    :cond_9
    :goto_6
    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v1, v8, :cond_a

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v8, :cond_b

    .line 457
    :cond_a
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v8, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setBouncerShowing(Z)V

    .line 458
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setBouncerShowing(Z)V

    .line 459
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    invoke-virtual {v8, v1}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->setBouncerShowing(Z)V

    .line 463
    :cond_b
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v8, :cond_c

    .line 464
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 467
    :cond_c
    if-eqz v4, :cond_18

    if-nez v2, :cond_18

    move v8, v6

    :goto_7
    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    if-eqz v9, :cond_19

    iget-boolean v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    if-nez v9, :cond_19

    move v9, v6

    :goto_8
    if-ne v8, v9, :cond_d

    iget-boolean v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v8, :cond_e

    .line 468
    :cond_d
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v4, :cond_1a

    if-nez v2, :cond_1a

    :goto_9
    invoke-virtual {v8, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardVisibilityChanged(Z)V

    .line 470
    :cond_e
    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    if-ne v1, v6, :cond_f

    iget-boolean v6, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    if-eqz v6, :cond_10

    .line 471
    :cond_f
    iget-object v6, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendKeyguardBouncerChanged(Z)V

    .line 474
    :cond_10
    iput-boolean v7, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mFirstUpdate:Z

    .line 475
    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastShowing:Z

    .line 476
    iput-boolean v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastOccluded:Z

    .line 477
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerShowing:Z

    .line 478
    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLastBouncerDismissible:Z

    .line 481
    return-void

    .end local v0    # "bouncerDismissible":Z
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    move v0, v7

    .line 421
    goto/16 :goto_0

    .restart local v0    # "bouncerDismissible":Z
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_12
    move v8, v7

    .line 435
    goto/16 :goto_1

    :cond_13
    move v9, v7

    goto/16 :goto_2

    .line 440
    :cond_14
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    const/high16 v9, 0x400000

    or-int/2addr v9, v5

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    goto/16 :goto_3

    :cond_15
    move v8, v7

    .line 443
    goto/16 :goto_4

    :cond_16
    move v9, v7

    goto/16 :goto_5

    .line 450
    :cond_17
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mMakeNavigationBarVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 451
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/android/systemui_ex/statusbar/phone/NavigationBarView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_18
    move v8, v7

    .line 467
    goto :goto_7

    :cond_19
    move v9, v7

    goto :goto_8

    :cond_1a
    move v6, v7

    .line 468
    goto :goto_9
.end method


# virtual methods
.method public changeKGNotificationsFlag()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->changeKGNotificationsFlag()V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 363
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer()V

    .line 365
    :cond_0
    return-void
.end method

.method public dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 2
    .param p1, "r"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 145
    if-nez p2, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->showWithDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 152
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 153
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 149
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    goto :goto_0
.end method

.method public hide(JJ)V
    .locals 11
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 295
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 298
    .local v8, "uptimeMillis":J
    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x30

    add-long/2addr v6, p1

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 300
    .local v2, "delay":J
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isInLaunchTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    new-instance v4, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$4;

    invoke-direct {v4, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$4;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V

    new-instance v5, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$5;

    invoke-direct {v5, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$5;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v1, v4, v5}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 349
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setKeyguardFadingAway(JJ)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hideKeyguard()Z

    move-result v0

    .line 325
    .local v0, "staying":Z
    if-nez v0, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setKeyguardFadingAway(Z)V

    .line 327
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    new-instance v6, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$6;

    invoke-direct {v6, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$6;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->animateKeyguardFadingOut(JJLjava/lang/Runnable;)V

    .line 342
    :goto_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    .line 343
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 344
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardGone()V

    .line 345
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->executeAfterKeyguardGoneAction()V

    .line 346
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    goto :goto_0

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/android/systemui_ex/statusbar/phone/ScrimController;->animateGoingToFullShade(JJ)V

    .line 339
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->finishKeyguardFadingAway()V

    .line 340
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mIsKeyguardGoingAway:Z

    goto :goto_1
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isGoingToNotificationShade()Z

    move-result v0

    return v0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public isOccluded()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    return v0
.end method

.method public onActivityDrawn()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isCollapsing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    new-instance v1, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$8;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$8;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->readyForKeyguardDone()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 389
    const/4 v0, 0x1

    .line 391
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->onMenuPressed()Z

    move-result v0

    return v0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOn:Z

    .line 172
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onScreenTurnedOff()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->onScreenTurnedOff()V

    .line 174
    return-void
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/IKeyguardShowCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardShowCallback;

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mScreenOn:Z

    .line 178
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->onScreenTurnedOn()V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->callbackAfterDraw(Lcom/android/internal/policy/IKeyguardShowCallback;)V

    .line 182
    :cond_0
    return-void
.end method

.method public registerStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui_ex/statusbar/phone/ScrimController;)V
    .locals 6
    .param p1, "phoneStatusBar"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "statusBarWindowManager"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;
    .param p4, "scrimController"    # Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 94
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContainer:Landroid/view/ViewGroup;

    .line 95
    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    .line 96
    iput-object p4, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mScrimController:Lcom/android/systemui_ex/statusbar/phone/ScrimController;

    .line 97
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    .line 99
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 160
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->hideKeyguard()Z

    .line 162
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->hide(Z)V

    .line 166
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->updateStates()V

    .line 168
    :cond_0
    return-void

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerOrKeyguard()V

    goto :goto_0
.end method

.method public setNeedsInput(Z)V
    .locals 1
    .param p1, "needsInput"    # Z

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setKeyguardNeedsInput(Z)V

    .line 244
    return-void
.end method

.method public setOccluded(Z)V
    .locals 3
    .param p1, "occluded"    # Z

    .prologue
    .line 251
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isInLaunchTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 254
    sget-object v0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "set occluded and isInLaunchTransition"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$3;

    invoke-direct {v2, p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager$3;-><init>(Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 269
    :goto_0
    return-void

    .line 266
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mOccluded:Z

    .line 267
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setKeyguardOccluded(Z)V

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    goto :goto_0
.end method

.method public shouldDisableWindowAnimationsForUnlock()Z
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x1

    return v0
.end method

.method public show(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mShowing:Z

    .line 107
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setKeyguardShowing(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 109
    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mIsKeyguardGoingAway:Z

    .line 284
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    if-eqz p1, :cond_0

    .line 287
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public updateUserActivityTimeout()V
    .locals 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->mBouncer:Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->getUserActivityTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->setKeyguardUserActivityTimeout(J)V

    .line 248
    return-void
.end method

.method public verifyUnlock()V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    .line 240
    return-void
.end method
