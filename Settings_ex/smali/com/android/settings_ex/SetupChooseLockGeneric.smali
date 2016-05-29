.class public Lcom/android/settings_ex/SetupChooseLockGeneric;
.super Lcom/android/settings_ex/ChooseLockGeneric;
.source "SetupChooseLockGeneric.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/preference/PreferenceFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const-class v0, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 45
    const-class v0, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings_ex/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/ChooseLockGeneric;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 57
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric;->onBackPressed()V

    .line 68
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 62
    invoke-virtual {p1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 63
    return-void
.end method
