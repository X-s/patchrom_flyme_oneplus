.class public Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockComplexPassword.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SetupChooseLockComplexPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# instance fields
.field private mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

.field private mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-static {p1}, Lcom/android/settings_ex/SetupRedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 154
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 157
    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    const v1, 0x7f0400fb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/SetupWizardLayout;

    iput-object v1, p0, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    .line 137
    iget-object v1, p0, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 138
    iget-object v1, p0, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    const v2, 0x7f120200

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 139
    .local v0, "headText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v1, p0, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    return-object v1
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 173
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 176
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->handleNext()V

    .line 181
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockComplexPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    const v1, 0x7f120204

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->setImeInsetView(Landroid/view/View;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 163
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockComplexPassword$SetupChooseLockPasswordFragment;->mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 168
    return-void
.end method
