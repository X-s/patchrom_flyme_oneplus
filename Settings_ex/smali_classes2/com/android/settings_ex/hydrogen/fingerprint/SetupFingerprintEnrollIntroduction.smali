.class public Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 149
    const v0, 0x7f050021

    const v1, 0x7f050022

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->overridePendingTransition(II)V

    .line 146
    return-void
.end method

.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 51
    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 58
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 164
    const/16 v0, 0xf9

    return v0
.end method

.method protected initViews()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 78
    :cond_0
    const v6, 0x7f110157

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;

    .line 79
    .local v3, "layout":Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;
    invoke-virtual {v3}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;

    .line 80
    .local v1, "adapter":Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
    const v6, 0x7f1100da

    invoke-virtual {v1, v6}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;

    move-result-object v5

    check-cast v5, Lcom/android/setupwizardlib/items/Item;

    .line 82
    .local v5, "nextItem":Lcom/android/setupwizardlib/items/Item;
    const v6, 0x7f0e05e8

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Lcom/android/setupwizardlib/items/Item;->setTitle(Ljava/lang/CharSequence;)V

    .line 84
    const v6, 0x7f1100d9

    invoke-virtual {v1, v6}, Lcom/android/setupwizardlib/items/RecyclerItemAdapter;->findItemById(I)Lcom/android/setupwizardlib/items/ItemHierarchy;

    move-result-object v2

    check-cast v2, Lcom/android/setupwizardlib/items/Item;

    .line 86
    .local v2, "cancelItem":Lcom/android/setupwizardlib/items/Item;
    const v6, 0x7f0e05e7

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 85
    invoke-virtual {v2, v6}, Lcom/android/setupwizardlib/items/Item;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {p0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v4

    .line 91
    .local v4, "nextButton":Landroid/widget/Button;
    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 95
    const v7, 0x7f0f0058

    .line 94
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/android/setupwizardlib/SetupWizardRecyclerLayout;->setDividerInset(I)V

    .line 70
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 102
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 103
    if-nez p3, :cond_0

    .line 104
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "data":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 106
    .restart local p3    # "data":Landroid/content/Intent;
    :cond_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 107
    .local v3, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string/jumbo v4, ":settings:password_quality"

    .line 109
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    .line 107
    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    new-instance v0, Landroid/content/ComponentName;

    .line 117
    const-string/jumbo v4, "com.oneplus.provision"

    .line 118
    const-string/jumbo v5, "com.oneplus.provision.UserSettingSuccess"

    .line 116
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .local v0, "componentName":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    .line 126
    const v4, 0x7f050023

    const v5, 0x7f050024

    invoke-virtual {p0, v4, v5}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->overridePendingTransition(II)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    return-void

    .line 120
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    .line 121
    const-string/jumbo v4, "com.oneplus.provision"

    .line 122
    const-string/jumbo v5, "com.oneplus.provision.GesturesActivity"

    .line 120
    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 128
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    goto :goto_1
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 64
    invoke-static {}, Lcom/android/settings_ex/SetupWizardUtils;->getSettingTheme()I

    move-result p2

    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollIntroduction;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 62
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, ":settings:frp_supported"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 140
    invoke-static {v1}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;->newInstance(Z)Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;

    move-result-object v0

    .line 142
    .local v0, "dialog":Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 139
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    .line 153
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method
