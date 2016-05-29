.class public Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
.super Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;
.source "SetupEncryptionInterstitial.java"


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
    .line 85
    invoke-direct {p0}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;-><init>()V

    return-void
.end method

.method private getHeaderTextResource()I
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_password_quality"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, "quality":I
    sparse-switch v0, :sswitch_data_0

    .line 106
    const v1, 0x7f09028d

    :goto_0
    return v1

    .line 101
    :sswitch_0
    const v1, 0x7f090289

    goto :goto_0

    .line 104
    :sswitch_1
    const v1, 0x7f09028b

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v3, 0x7f0400d1

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 91
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0f0220

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 92
    .local v1, "setupContent":Landroid/view/ViewGroup;
    invoke-super {p0, p1, v1, p3}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "content":Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 94
    return-object v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/EncryptionInterstitial$EncryptionInterstitialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0200d1

    invoke-static {v1, v2}, Lcom/android/settings_ex/SetupWizardUtils;->setIllustration(Landroid/app/Activity;I)V

    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getHeaderTextResource()I

    move-result v0

    .line 116
    .local v0, "title":I
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->setHeaderText(Landroid/app/Activity;I)V

    .line 118
    return-void
.end method
