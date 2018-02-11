.class public Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling;
.super Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;
.source "SetupFingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;
    }
.end annotation


# static fields
.field private static final TAG_DIALOG:Ljava/lang/String; = "dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 53
    return-object v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 98
    const/16 v0, 0xf6

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected initViews()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 66
    invoke-static {p0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 68
    const v2, 0x7f110283

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "buttonBar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    .line 74
    .local v1, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 76
    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0e05aa

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 77
    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    :cond_1
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 59
    invoke-static {}, Lcom/android/settings_ex/SetupWizardUtils;->getSettingTheme()I

    move-result p2

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/hydrogen/fingerprint/FingerprintEnrollEnrolling;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 57
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling;->onBackPressed()V

    .line 87
    return-void
.end method

.method public onNavigateNext()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;

    invoke-direct {v0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/hydrogen/fingerprint/SetupFingerprintEnrollEnrolling$SkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 92
    return-void
.end method
