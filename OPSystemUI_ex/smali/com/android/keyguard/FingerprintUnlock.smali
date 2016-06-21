.class public Lcom/android/keyguard/FingerprintUnlock;
.super Ljava/lang/Object;
.source "FingerprintUnlock.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAttempts:I

.field private mBouncerOverTril:Z

.field private mContext:Landroid/content/Context;

.field private mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

.field private mIsForceBouncerShowMsg:Z

.field private mIsSimLocked:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardUpdateMonitorCallBack:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardUpdateMonitor;
    .param p2, "mH"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "FingerprintUnlock"

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mFingerprintManager:Lcom/oneplus/fingerprints/service/FingerprintManager;

    .line 57
    new-instance v0, Lcom/android/keyguard/FingerprintUnlock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/FingerprintUnlock$1;-><init>(Lcom/android/keyguard/FingerprintUnlock;)V

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mKeyguardUpdateMonitorCallBack:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 150
    new-instance v0, Lcom/android/keyguard/FingerprintUnlock$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/FingerprintUnlock$2;-><init>(Lcom/android/keyguard/FingerprintUnlock;)V

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mIdentifyCallback:Lcom/oneplus/fingerprints/service/FingerprintManager$IdentifyListener;

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/FingerprintUnlock;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 51
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/FingerprintUnlock;->mKeyguardUpdateMonitorCallBack:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 52
    iput-object p2, p0, Lcom/android/keyguard/FingerprintUnlock;->mHandler:Landroid/os/Handler;

    .line 53
    iput-object p3, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    .line 54
    const-string v0, "power"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mPowerManager:Landroid/os/PowerManager;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/FingerprintUnlock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/FingerprintUnlock;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->disconnect()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/FingerprintUnlock;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/FingerprintUnlock;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->connect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/FingerprintUnlock;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/FingerprintUnlock;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/FingerprintUnlock;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/FingerprintUnlock;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/keyguard/FingerprintUnlock;->mIsSimLocked:Z

    return p1
.end method

.method private connect()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method private disconnect()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method


# virtual methods
.method public forBouncerShowMessage(Z)V
    .locals 0
    .param p1, "isForceShow"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/android/keyguard/FingerprintUnlock;->mIsForceBouncerShowMsg:Z

    .line 216
    return-void
.end method

.method public isFingerprintEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_finger_lockscreen"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    iget-object v2, p0, Lcom/android/keyguard/FingerprintUnlock;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isForceBouncerShowMsg()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mIsForceBouncerShowMsg:Z

    return v0
.end method

.method public isIgnoreFingerPrint()Z
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->isOverTrial()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/FingerprintUnlock;->isFingerprintEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverTrial()Z
    .locals 2

    .prologue
    .line 200
    iget v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mAttempts:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetAttempts()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mAttempts:I

    .line 148
    return-void
.end method

.method public setBouncerOverTrial(Z)V
    .locals 1
    .param p1, "isOverTrial"    # Z

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mBouncerOverTril:Z

    if-eq v0, p1, :cond_0

    .line 221
    iput-boolean p1, p0, Lcom/android/keyguard/FingerprintUnlock;->mBouncerOverTril:Z

    .line 222
    iget-boolean v0, p0, Lcom/android/keyguard/FingerprintUnlock;->mBouncerOverTril:Z

    if-eqz v0, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->disconnect()V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/FingerprintUnlock;->connect()V

    goto :goto_0
.end method
