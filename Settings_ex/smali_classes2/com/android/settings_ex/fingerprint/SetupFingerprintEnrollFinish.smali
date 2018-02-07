.class public Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;
.source "SetupFingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 36
    iget v1, p0, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 37
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 40
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0xf8

    return v0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    .line 51
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->initViews()V

    .line 53
    const v2, 0x7f1100c0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, "message":Landroid/widget/TextView;
    const v2, 0x7f0e05f9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 56
    const v2, 0x7f110161

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, "secondaryMessage":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 46
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 44
    return-void
.end method
