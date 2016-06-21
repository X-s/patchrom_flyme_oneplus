.class public Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"


# instance fields
.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryLevel:I

.field private mBatteryLevelView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

.field private mLastPowerPluggedIn:Z

.field private mPowerCharged:Z

.field private mPowerPluggedIn:Z

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

.field private mTransientIndication:Ljava/lang/String;

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;Landroid/widget/TextView;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;
    .param p3, "chargeview"    # Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;
    .param p4, "batteryLevelView"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 260
    new-instance v0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    new-instance v0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    .line 73
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 75
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 76
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 79
    iput-object p3, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    .line 80
    iput-object p4, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->setChargingTextView(Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;Landroid/widget/TextView;)V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .prologue
    .line 45
    iget v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mLastPowerPluggedIn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mLastPowerPluggedIn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mVisible:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->startChargingAnimation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->updateIndication()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    return-object p1
.end method

.method private computePowerIndication()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private startChargingAnimation()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAnimationState:Z

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->startDrawCircle()V

    .line 109
    :cond_0
    return-void
.end method

.method private updateIndication()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 156
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mAnimationState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->mChargingTextAnimation:Z

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;->setAlpha(F)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public hideTransientIndication()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 152
    :cond_0
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 3
    .param p1, "delayMs"    # J

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 125
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->setAlpha(F)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;->setAlpha(F)V

    .line 283
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 285
    :cond_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v3, 0x8

    .line 85
    const-string v0, "KeyguardIndicationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Charging View Visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 90
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mKeyguardChargeAnimationView:Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/statusbar/KeyguardChargeAnimationView;->setVisibleState(Z)V

    .line 92
    :cond_0
    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 94
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTextView:Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/statusbar/phone/KeyguardIndicationTextView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mBatteryLevelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTransientIndication(I)V
    .locals 1
    .param p1, "transientIndication"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public showTransientIndication(Ljava/lang/String;)V
    .locals 2
    .param p1, "transientIndication"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->updateIndication()V

    .line 141
    return-void
.end method
