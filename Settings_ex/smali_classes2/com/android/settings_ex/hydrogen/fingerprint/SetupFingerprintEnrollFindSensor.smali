.class public Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;
.super Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;
.source "SetupFingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f040097

    return v0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 45
    iget v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 46
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 49
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0xf7

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected initViews()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 62
    invoke-static {p0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 64
    const v1, 0x7f1100da

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "nextButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 61
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 55
    invoke-static {}, Lcom/android/settings_ex/SetupWizardUtils;->getSettingTheme()I

    move-result p2

    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFindSensor;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 53
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;->onBackPressed()V

    .line 79
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;->onNextButtonClick()V

    .line 84
    return-void
.end method
