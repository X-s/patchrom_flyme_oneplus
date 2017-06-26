.class public Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;
.source "SetupFingerprintEnrollFinish.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


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
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 36
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 38
    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected initViews()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 49
    invoke-static {p0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 51
    const v4, 0x7f12003f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, "nextButton":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    .line 57
    .local v1, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 58
    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 60
    const v4, 0x7f120026

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, "message":Landroid/widget/TextView;
    const v4, 0x7f0c0402

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 63
    const v4, 0x7f1200b9

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 64
    .local v3, "secondaryMessage":Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollFinish;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 45
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->onBackPressed()V

    .line 75
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFinish;->onNextButtonClick()V

    .line 80
    return-void
.end method
