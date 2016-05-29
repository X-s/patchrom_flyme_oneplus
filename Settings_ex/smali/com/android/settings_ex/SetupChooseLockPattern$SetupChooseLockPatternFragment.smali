.class public Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;
.super Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;
.source "SetupChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SetupChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPatternFragment"
.end annotation


# instance fields
.field private mRetryButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {p1}, Lcom/android/settings_ex/SetupRedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 121
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->handleLeftButton()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    const v2, 0x7f0400d1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0f0220

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    .local v0, "setupContent":Landroid/view/ViewGroup;
    const v2, 0x7f0400cf

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 104
    return-object v1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const v0, 0x7f0f0219

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-static {v0, v1}, Lcom/android/settings_ex/SetupWizardUtils;->setIllustration(Landroid/app/Activity;I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/SetupWizardUtils;->setHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 115
    return-void
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SetupChooseLockPattern;

    .line 136
    .local v0, "activity":Lcom/android/settings_ex/SetupChooseLockPattern;
    # getter for: Lcom/android/settings_ex/SetupChooseLockPattern;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    invoke-static {v0}, Lcom/android/settings_ex/SetupChooseLockPattern;->access$000(Lcom/android/settings_ex/SetupChooseLockPattern;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 137
    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 2
    .param p1, "text"    # I

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SetupChooseLockPattern;

    .line 142
    .local v0, "activity":Lcom/android/settings_ex/SetupChooseLockPattern;
    # getter for: Lcom/android/settings_ex/SetupChooseLockPattern;->mNavigationBar:Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;
    invoke-static {v0}, Lcom/android/settings_ex/SetupChooseLockPattern;->access$000(Lcom/android/settings_ex/SetupChooseLockPattern;)Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/setupwizard/navigationbar/SetupWizardNavBar;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(I)V

    .line 143
    return-void
.end method

.method protected updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 2
    .param p1, "stage"    # Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 149
    iget-object v1, p0, Lcom/android/settings_ex/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mRetryButton:Landroid/widget/Button;

    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 150
    return-void

    .line 149
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
