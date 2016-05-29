.class public Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
.super Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
.source "SetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SetupChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockGenericFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected disableUnusablePreferences(ILandroid/util/MutableBoolean;)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "allowBiometric"    # Landroid/util/MutableBoolean;

    .prologue
    .line 112
    const/high16 v1, 0x10000

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 114
    .local v0, "newQuality":I
    const/4 v1, 0x1

    invoke-super {p0, v0, p2, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(ILandroid/util/MutableBoolean;Z)V

    .line 116
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z

    .prologue
    .line 140
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 143
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "minLength"    # I
    .param p5, "maxLength"    # I
    .param p6, "requirePasswordToDecrypt"    # Z
    .param p7, "confirmCredentials"    # Z

    .prologue
    .line 122
    invoke-static/range {p1 .. p7}, Lcom/android/settings_ex/SetupChooseLockPassword;->createIntent(Landroid/content/Context;IZIIZZ)Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 125
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFallback"    # Z
    .param p3, "requirePassword"    # Z
    .param p4, "confirmCredentials"    # Z

    .prologue
    .line 131
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/SetupChooseLockPattern;->createIntent(Landroid/content/Context;ZZZ)Landroid/content/Intent;

    move-result-object v0

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 134
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 79
    const v4, 0x7f0400d0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 80
    .local v3, "view":Landroid/view/View;
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 81
    .local v1, "list":Landroid/widget/ListView;
    const v4, 0x7f0f0035

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 82
    .local v2, "title":Landroid/view/View;
    if-nez v2, :cond_0

    .line 83
    const v4, 0x7f0400d3

    invoke-virtual {p1, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "header":Landroid/view/View;
    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 86
    .end local v0    # "header":Landroid/view/View;
    :cond_0
    return-object v3
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-static {v0, v1}, Lcom/android/settings_ex/SetupWizardUtils;->setIllustration(Landroid/app/Activity;I)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/SetupWizardUtils;->setHeaderText(Landroid/app/Activity;Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method
