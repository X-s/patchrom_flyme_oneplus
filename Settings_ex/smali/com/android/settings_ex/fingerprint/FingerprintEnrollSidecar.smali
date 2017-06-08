.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToken:[B


# direct methods
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

    .line 135
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 177
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->startEnrollment()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()V

    return-void
.end method

.method private cancelEnrollment()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 117
    :cond_0
    return-void
.end method

.method private startEnrollment()V
    .locals 6

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 101
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 103
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 104
    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    iget-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 106
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public getEnrollmentRemaining()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return v0
.end method

.method public getEnrollmentSteps()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 186
    const/16 v0, 0xf5

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mDone:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setRetainInstance(Z)V

    .line 50
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 82
    const-string v0, "FingerprintEnrollSidecar"

    const-string v1, "FingerprintEnrollSidecar--onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()V

    .line 85
    const-string v0, "FingerprintEnrollSidecar"

    const-string v1, "FingerprintEnrollSidecar--cancelEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 71
    const-string v0, "FingerprintEnrollSidecar"

    const-string v1, "FingerprintEnrollSidecar--onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-nez v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->startEnrollment()V

    .line 74
    const-string v0, "FingerprintEnrollSidecar"

    const-string v1, "FingerprintEnrollSidecar--startEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onStart()V

    .line 66
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onStop()V

    .line 96
    return-void
.end method

.method public setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    .line 121
    return-void
.end method
