.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$2;,
        Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
    }
.end annotation


# instance fields
.field private mDone:Z

.field private mEnrolling:Z

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mEnrollmentRemaining:I

.field private mEnrollmentSteps:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mDone:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V

    .line 118
    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 149
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 35
    return-void
.end method

.method private startEnrollment()V
    .locals 6

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 82
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 83
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 87
    iget v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    const/4 v3, 0x0

    .line 86
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 79
    return-void
.end method


# virtual methods
.method cancelEnrollment()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 95
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 97
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    return v2
.end method

.method public getEnrollmentRemaining()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return v0
.end method

.method public getEnrollmentSteps()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 158
    const/16 v0, 0xf5

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mDone:Z

    return v0
.end method

.method public isEnrolling()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    .line 57
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 58
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "hw_auth_token"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    .line 60
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setRetainInstance(Z)V

    .line 49
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onStart()V

    .line 66
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-nez v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->startEnrollment()V

    .line 64
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onStop()V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    .line 72
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    .line 102
    return-void
.end method
