.class public Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFindSensor.java"


# static fields
.field private static final CONFIRM_REQUEST:I = 0x1

.field private static final ENROLLING:I = 0x2


# instance fields
.field private mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;


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

    .line 97
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v6

    .line 98
    .local v6, "challenge":J
    new-instance v1, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 99
    .local v1, "helper":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    const/4 v2, 0x1

    const v0, 0x7f0c03e7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 68
    if-ne p1, v3, :cond_2

    .line 69
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 70
    const-string v3, "hw_auth_token"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 71
    const v3, 0x7f05000e

    const v4, 0x7f05000f

    invoke-virtual {p0, v3, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->overridePendingTransition(II)V

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 75
    :cond_2
    if-ne p1, v4, :cond_5

    .line 76
    if-ne p2, v3, :cond_3

    .line 77
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 79
    :cond_3
    if-ne p2, v4, :cond_4

    .line 80
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 83
    :cond_4
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 84
    .local v1, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 85
    .local v0, "enrolled":I
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e00a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 87
    .local v2, "max":I
    if-lt v0, v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 92
    .end local v0    # "enrolled":I
    .end local v1    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v2    # "max":I
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f04005f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setContentView(I)V

    .line 41
    const v0, 0x7f0c03f6

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->setHeaderText(I)V

    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-nez v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->launchConfirmLock()V

    .line 45
    :cond_0
    const v0, 0x7f1200b8

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    iput-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    .line 47
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->startAnimation()V

    .line 53
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintLocationAnimationView;->stopAnimation()V

    .line 59
    return-void
.end method
