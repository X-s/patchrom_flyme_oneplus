.class public Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;
.super Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFinish;
.source "SetupFingerprintEnrollFinish.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFinish;-><init>()V

    return-void
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 41
    iget v1, p0, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 42
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 45
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0xf8

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected initViews()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 58
    invoke-static {p0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 60
    const v4, 0x7f1100da

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "nextButton":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    .line 66
    .local v1, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 67
    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    const v4, 0x7f1100c0

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 70
    .local v0, "message":Landroid/widget/TextView;
    const v4, 0x7f0e0627

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 72
    const v4, 0x7f110161

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 73
    .local v3, "secondaryMessage":Landroid/widget/TextView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 51
    invoke-static {}, Lcom/android/settings_ex/SetupWizardUtils;->getSettingTheme()I

    move-result p2

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollFinish;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 49
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;->onBackPressed()V

    .line 82
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;->onNextButtonClick()V

    .line 87
    return-void
.end method
