.class public Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFindSensor;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;
.source "SetupFingerprintEnrollFindSensor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f040080

    return v0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 39
    iget v1, p0, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFindSensor;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 40
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFindSensor;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 43
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 54
    const/16 v0, 0xf7

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFindSensor;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 47
    return-void
.end method
