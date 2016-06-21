.class public Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"


# instance fields
.field private mCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mHasDismissAction:Z

.field private mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRoot:Landroid/view/ViewGroup;

.field private final mShowRunnable:Ljava/lang/Runnable;

.field private mShowingSoon:Z

.field private mWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/keyguard/ViewMediatorCallback;
    .param p3, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p4, "windowManager"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;
    .param p5, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mChoreographer:Landroid/view/Choreographer;

    .line 90
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    .line 60
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 62
    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    iput-object p5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    .line 64
    iput-object p4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardViewBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    return p1
.end method

.method private cancelShowRunnable()V
    .locals 4

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    .line 111
    return-void
.end method

.method private ensureView()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->inflateView()V

    .line 202
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mWindowManager:Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager;->getCurrentState()Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->isKeyguardShowingAndNotOccluded(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/high16 v1, -0x22000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private inflateView()V
    .locals 3

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->removeView()V

    .line 206
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    .line 207
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const v1, 0x7f0f005c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewBase;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    .line 208
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewBase;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 209
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewBase;->setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 213
    return-void
.end method

.method private removeView()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public getUserActivityTimeout()J
    .locals 4

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewBase;->getUserActivityTimeout()J

    move-result-wide v0

    .line 172
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 176
    .end local v0    # "timeout":J
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x2710

    goto :goto_0
.end method

.method public hide(Z)V
    .locals 4
    .param p1, "destroyView"    # Z

    .prologue
    const/4 v3, 0x0

    .line 121
    const-string v0, "KeyguardBouncer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-nez p1, :cond_0

    .line 124
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mHasDismissAction:Z

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mHasDismissAction:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->onDismiss()V

    .line 129
    iput-boolean v3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mHasDismissAction:Z

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->cancelShowRunnable()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewBase;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->cleanUp()V

    .line 137
    :cond_2
    if-eqz p1, :cond_4

    .line 138
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->removeView()V

    .line 142
    :cond_3
    :goto_0
    return-void

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 140
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 283
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isFullscreenBouncer()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 247
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardViewBase;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 249
    .local v0, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 251
    .end local v0    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_1
    return v1
.end method

.method public isKeyguardShowingAndNotOccluded(Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/phone/StatusBarWindowManager$State;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_1

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
    .line 180
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

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

.method public needsFullscreenBouncer()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 231
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v3, :cond_2

    .line 232
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardViewBase;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 233
    .local v0, "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v3, :cond_1

    :cond_0
    move v1, v2

    .line 239
    .end local v0    # "mode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    :cond_1
    :goto_0
    return v1

    .line 235
    :cond_2
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 236
    goto :goto_0
.end method

.method public onMenuPressed()Z
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 263
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->handleMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->onPause()V

    .line 167
    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 2

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 185
    .local v0, "wasInitialized":Z
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 186
    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewBase;->showPrimarySecurityScreen()V

    .line 189
    :cond_0
    return-void

    .line 184
    .end local v0    # "wasInitialized":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Z)V
    .locals 6
    .param p1, "resetSecuritySelection"    # Z

    .prologue
    const/4 v1, 0x1

    .line 68
    const-string v0, "KeyguardBouncer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 70
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->showPrimarySecurityScreen()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    if-eqz v0, :cond_2

    .line 88
    :cond_1
    :goto_0
    return-void

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewBase;->dismiss()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    iput-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mShowingSoon:Z

    .line 85
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mShowRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    const-wide/16 v4, 0x10

    invoke-virtual/range {v0 .. v5}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    goto :goto_0
.end method

.method public showWithDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 1
    .param p1, "r"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mHasDismissAction:Z

    .line 115
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->ensureView()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewBase;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->show(Z)V

    .line 118
    return-void
.end method

.method public startPreHideAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewBase;->startDisappearAnimation(Ljava/lang/Runnable;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    if-eqz p1, :cond_0

    .line 151
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
