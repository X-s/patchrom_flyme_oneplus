.class public Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SetupChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    invoke-static {p1}, Lcom/android/settings_ex/SetupRedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 122
    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    const/4 v6, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SetupChooseLockPassword;

    .line 140
    .local v0, "activity":Lcom/android/settings_ex/SetupChooseLockPassword;
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    # getter for: Lcom/android/settings_ex/SetupChooseLockPassword;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    invoke-static {v0}, Lcom/android/settings_ex/SetupChooseLockPassword;->access$000(Lcom/android/settings_ex/SetupChooseLockPassword;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 142
    .local v1, "bottomMargin":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 144
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v5

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v3

    return-object v3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    const v3, 0x7f0400d1

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 103
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0f021f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "scrollView":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 105
    const v3, 0x7f0f0220

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 106
    .local v1, "setupContent":Landroid/view/ViewGroup;
    const v3, 0x7f0400ce

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 107
    return-object v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-static {v0, v1}, Lcom/android/settings_ex/SetupWizardUtils;->setIllustration(Landroid/app/Activity;I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/SetupWizardUtils;->setHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 116
    return-void
.end method

.method protected setNextEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SetupChooseLockPassword;

    .line 128
    .local v0, "activity":Lcom/android/settings_ex/SetupChooseLockPassword;
    # getter for: Lcom/android/settings_ex/SetupChooseLockPassword;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    invoke-static {v0}, Lcom/android/settings_ex/SetupChooseLockPassword;->access$000(Lcom/android/settings_ex/SetupChooseLockPassword;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    return-void
.end method

.method protected setNextText(I)V
    .locals 2
    .param p1, "text"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SetupChooseLockPassword;

    .line 134
    .local v0, "activity":Lcom/android/settings_ex/SetupChooseLockPassword;
    # getter for: Lcom/android/settings_ex/SetupChooseLockPassword;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    invoke-static {v0}, Lcom/android/settings_ex/SetupChooseLockPassword;->access$000(Lcom/android/settings_ex/SetupChooseLockPassword;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(I)V

    .line 135
    return-void
.end method
