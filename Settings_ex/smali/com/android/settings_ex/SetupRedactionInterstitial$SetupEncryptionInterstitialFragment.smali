.class public Lcom/android/settings_ex/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;
.source "SetupRedactionInterstitial.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SetupRedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEncryptionInterstitialFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    const v0, 0x7f04010f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 97
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 3

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SetupRedactionInterstitial;

    .line 102
    .local v0, "activity":Lcom/android/settings_ex/SetupRedactionInterstitial;
    if-eqz v0, :cond_0

    .line 103
    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/android/settings_ex/SetupRedactionInterstitial;->getResultIntentData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SetupRedactionInterstitial;->setResult(ILandroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->finish()V

    .line 106
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    const v2, 0x7f1200b1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 85
    .local v0, "layout":Lcom/android/setupwizardlib/SetupWizardLayout;
    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    .line 86
    .local v1, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 87
    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getBackButton()Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 89
    return-void
.end method
