.class public Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 42
    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getOnboardIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollOnboard;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 35
    return-object v0
.end method

.method protected initViews()V
    .locals 2

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 55
    const v1, 0x7f1200bd

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "buttonBar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 57
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 61
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 49
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->onBackPressed()V

    .line 71
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->onNextButtonClick()V

    .line 76
    return-void
.end method
