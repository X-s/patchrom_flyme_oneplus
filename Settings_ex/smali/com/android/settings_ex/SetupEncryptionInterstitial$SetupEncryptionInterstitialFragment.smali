.class public Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;
.source "SetupEncryptionInterstitial.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SetupEncryptionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEncryptionInterstitialFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const v0, 0x7f04010e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 101
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SetupEncryptionInterstitial;

    .line 107
    .local v0, "activity":Lcom/android/settings_ex/SetupEncryptionInterstitial;
    if-eqz v0, :cond_0

    .line 108
    const/4 v1, -0x1

    invoke-virtual {v0}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->getResultIntentData()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->setResult(ILandroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->finish()V

    .line 111
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    const v3, 0x7f1200b1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/SetupWizardLayout;

    .line 85
    .local v1, "layout":Lcom/android/setupwizardlib/SetupWizardLayout;
    invoke-virtual {v1}, Lcom/android/setupwizardlib/SetupWizardLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v2

    .line 86
    .local v2, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v2, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 90
    const v3, 0x7f0c0ce4

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 91
    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 93
    :cond_0
    return-void
.end method
