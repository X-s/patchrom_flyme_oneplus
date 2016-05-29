.class public Lcom/android/settings_ex/SetupChooseLockPattern;
.super Lcom/android/settings_ex/ChooseLockPattern;
.source "SetupChooseLockPattern.java"

# interfaces
.implements Lcom/android/setupwizard/navigationbar/SetupWizardNavBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;

.field private mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/SetupChooseLockPattern;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/SetupChooseLockPattern;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPattern;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isFallback"    # Z
    .param p2, "requirePassword"    # Z
    .param p3, "confirmCredentials"    # Z

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings_ex/ChooseLockPattern;->createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v0

    .line 45
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/SetupChooseLockPattern;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 46
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
    .line 59
    const-class v0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;

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
    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings_ex/SetupWizardUtils;->getTheme(Landroid/content/Intent;I)I

    move-result p2

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/ChooseLockPattern;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 66
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings_ex/ChooseLockPattern;->onAttachFragment(Landroid/app/Fragment;)V

    .line 89
    instance-of v0, p1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;

    if-eqz v0, :cond_0

    .line 90
    check-cast p1, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    .end local p1    # "fragment":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/android/settings_ex/SetupChooseLockPattern;->mFragment:Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    .line 92
    :cond_0
    return-void
.end method

.method public onNavigateBack()V
    .locals 0

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern;->onBackPressed()V

    .line 77
    return-void
.end method

.method public onNavigateNext()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPattern;->mFragment:Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPattern;->mFragment:Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->handleRightButton()V

    .line 84
    :cond_0
    return-void
.end method

.method public onNavigationBarCreated(Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings_ex/SetupChooseLockPattern;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    .line 71
    invoke-static {p0, p1}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;)V

    .line 72
    return-void
.end method
