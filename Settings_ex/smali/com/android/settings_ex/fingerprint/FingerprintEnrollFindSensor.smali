.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFindSensor.java"


# static fields
.field private static final CONFIRM_REQUEST:I = 0x1

.field private static final ENROLLING:I = 0x2

.field public static final EXTRA_KEY_LAUNCHED_CONFIRM:Ljava/lang/String; = "launched_confirm_lock"


# instance fields
.field private mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

.field private mLaunchedConfirmLock:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 112
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 113
    .local v6, "challenge":J
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 114
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const v0, 0x7f0c03ce

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 128
    const/16 v0, 0xf1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 80
    if-ne p1, v3, :cond_2

    .line 81
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 82
    const-string v3, "hw_auth_token"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 83
    const v3, 0x7f050013

    const v4, 0x7f050014

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->overridePendingTransition(II)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 87
    :cond_2
    if-ne p1, v4, :cond_6

    .line 88
    if-ne p2, v3, :cond_3

    .line 89
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 91
    :cond_3
    if-ne p2, v4, :cond_4

    .line 92
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 94
    :cond_4
    if-ne p2, v5, :cond_5

    .line 95
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 98
    :cond_5
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 99
    .local v1, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 100
    .local v0, "enrolled":I
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 102
    .local v2, "max":I
    if-lt v0, v2, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 107
    .end local v0    # "enrolled":I
    .end local v1    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "max":I
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f040063

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setContentView(I)V

    .line 43
    const v0, 0x7f0c03de

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setHeaderText(I)V

    .line 44
    const v0, 0x7f0e007f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setHeaderTextColor(I)V

    .line 45
    if-eqz p1, :cond_1

    const-string v0, "launched_confirm_lock"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    .line 47
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    if-nez v0, :cond_0

    .line 48
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "zhuyang--FingerprintEnrollFindSensor--launchConfirmLock"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->launchConfirmLock()V

    .line 51
    :cond_0
    const v0, 0x7f1200d2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    .line 53
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onNextButtonClick()V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "launched_confirm_lock"

    iget-boolean v1, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->startAnimation()V

    .line 59
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 64
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->stopAnimation()V

    .line 65
    return-void
.end method
