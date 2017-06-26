.class public Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SetupChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# instance fields
.field private mLayout:Lcom/android/setupwizardlib/SetupWizardLayout;

.field private mNavigationBar:Lcom/android/setupwizardlib/view/NavigationBar;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

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
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 123
    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    const v0, 0x7f04008e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 141
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 144
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->handleNext()V

    .line 149
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method protected setNextEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 130
    return-void
.end method

.method protected setNextText(I)V
    .locals 0
    .param p1, "text"    # I

    .prologue
    .line 136
    return-void
.end method
