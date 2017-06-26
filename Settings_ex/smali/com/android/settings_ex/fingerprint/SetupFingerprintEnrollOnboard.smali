.class public Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollOnboard;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollOnboard;
.source "SetupFingerprintEnrollOnboard.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollOnboard;-><init>()V

    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollOnboard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 36
    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollOnboard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 43
    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollOnboard;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 56
    const v1, 0x7f12003f

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollOnboard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "nextButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 58
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollOnboard;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 62
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollOnboard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 49
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollOnboard;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 50
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollOnboard;->onBackPressed()V

    .line 72
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollOnboard;->onNextButtonClick()V

    .line 77
    return-void
.end method
