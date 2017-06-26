.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
.super Landroid/app/Fragment;
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
    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 165
    new-instance v0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$2;-><init>(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->startEnrollment()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()V

    return-void
.end method

.method private cancelEnrollment()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 106
    :cond_0
    return-void
.end method

.method private startEnrollment()V
    .locals 5

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    .line 93
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    .line 97
    return-void
.end method


# virtual methods
.method public getEnrollmentRemaining()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return v0
.end method

.method public getEnrollmentSteps()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mDone:Z

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 53
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    .line 55
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->setRetainInstance(Z)V

    .line 48
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 77
    const-string v0, "FingerprintEnrollSidecar"

    const-string v1, "FingerprintEnrollSidecar--onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()V

    .line 80
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "zhuyang--onPause"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    const-string v0, "FingerprintEnrollSidecar"

    const-string v1, "FingerprintEnrollSidecar--cancelEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 66
    const-string v0, "FingerprintEnrollSidecar"

    const-string v1, "FingerprintEnrollSidecar--onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-nez v0, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->startEnrollment()V

    .line 69
    const-string v0, "FingerprintEnrollSidecar"

    const-string v1, "FingerprintEnrollSidecar--startEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 60
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 88
    return-void
.end method

.method public setListener(Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings_ex/fingerprint/FingerprintEnrollSidecar$Listener;

    .line 110
    return-void
.end method
