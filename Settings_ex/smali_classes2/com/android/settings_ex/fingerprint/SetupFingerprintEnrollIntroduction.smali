.class public Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/OxygenSetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 43
    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 50
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0xf9

    return v0
.end method

.method protected initViews()V
    .locals 4

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->initViews()V

    .line 63
    const v3, 0x7f110164

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 65
    .local v1, "description":Landroid/widget/TextView;
    const v3, 0x7f0e05e4

    .line 64
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    .line 69
    .local v2, "nextButton":Landroid/widget/Button;
    const v3, 0x7f0e05e8

    .line 68
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 71
    const v3, 0x7f110165

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 73
    .local v0, "cancelButton":Landroid/widget/Button;
    const v3, 0x7f0e05e7

    .line 72
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 60
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 79
    if-nez p3, :cond_0

    .line 80
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "data":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 82
    .restart local p3    # "data":Landroid/content/Intent;
    :cond_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 83
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v4, ":settings:password_quality"

    .line 85
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    .line 83
    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    new-instance v0, Landroid/content/ComponentName;

    .line 93
    const-string/jumbo v4, "com.oneplus.provision"

    .line 94
    const-string/jumbo v5, "com.oneplus.provision.UserSettingSuccess"

    .line 92
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    .line 102
    const v4, 0x7f050023

    const v5, 0x7f050024

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->overridePendingTransition(II)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    return-void

    .line 96
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    .line 97
    const-string/jumbo v4, "com.oneplus.provision"

    .line 98
    const-string/jumbo v5, "com.oneplus.provision.GesturesActivity"

    .line 96
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 104
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    goto :goto_1
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/fingerprint/FingerprintEnrollIntroduction;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 54
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:frp_supported"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 116
    invoke-static {v1}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;->newInstance(Z)Lcom/android/settings_ex/fingerprint/SetupSkipDialog;

    move-result-object v0

    .line 118
    .local v0, "dialog":Lcom/android/settings_ex/fingerprint/SetupSkipDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/fingerprint/SetupFingerprintEnrollIntroduction;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 115
    return-void
.end method
