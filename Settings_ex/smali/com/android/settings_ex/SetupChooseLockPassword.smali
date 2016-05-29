.class public Lcom/android/settings_ex/SetupChooseLockPassword;
.super Lcom/android/settings_ex/ChooseLockPassword;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

.field private mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword;-><init>()V

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SetupChooseLockPassword;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SetupChooseLockPassword;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "isFallback"    # Z
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "confirmCredentials"    # Z

    .prologue
    .line 44
    invoke-static/range {p0 .. p6}, Lcom/android/settings_ex/ChooseLockPassword;->createIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/SetupChooseLockPassword;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 47
    const-string v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 48
    return-object v0
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    const-class v0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

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
    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings_ex/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    .line 67
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/ChooseLockPassword;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 68
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings_ex/ChooseLockPassword;->onAttachFragment(Landroid/app/Fragment;)V

    .line 91
    instance-of v0, p1, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    if-eqz v0, :cond_0

    .line 92
    check-cast p1, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/settings_ex/SetupChooseLockPassword;->mFragment:Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    .line 94
    :cond_0
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword;->onBackPressed()V

    .line 79
    return-void
.end method

.method public onNavigateNext()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword;->mFragment:Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword;->mFragment:Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->handleNext()V

    .line 86
    :cond_0
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/SetupChooseLockPassword;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .line 73
    invoke-static {p0, p1}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 74
    return-void
.end method
