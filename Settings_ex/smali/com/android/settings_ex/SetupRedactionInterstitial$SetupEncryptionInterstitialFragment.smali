.class public Lcom/android/settings_ex/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;
.source "SetupRedactionInterstitial.java"


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
    .line 83
    invoke-direct {p0}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    const v3, 0x7f0400d1

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0f0220

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 90
    .local v1, "setupContent":Landroid/view/ViewGroup;
    invoke-super {p0, p1, v1, p3}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    return-object v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/notification/RedactionInterstitial$RedactionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-static {v0, v1}, Lcom/android/settings_ex/SetupWizardUtils;->setIllustration(Landroid/app/Activity;I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupRedactionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090ab1

    invoke-static {v0, v1}, Lcom/android/settings_ex/SetupWizardUtils;->setHeaderText(Landroid/app/Activity;I)V

    .line 101
    return-void
.end method
