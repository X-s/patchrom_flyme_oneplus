.class public Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
.super Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;
.source "SetupChooseLockGeneric.java"

# interfaces
.implements Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SetupChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockGenericFragment"
.end annotation


# static fields
.field private static final EXTRA_PASSWORD_QUALITY:Ljava/lang/String; = ":settings:password_quality"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected disableUnusablePreferences(IZ)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "hideDisabled"    # Z

    .prologue
    .line 116
    const/high16 v1, 0x10000

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 118
    .local v0, "newQuality":I
    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 119
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "required"    # Z

    .prologue
    .line 180
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/SetupEncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v0

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 183
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "challenge"    # J

    .prologue
    .line 135
    invoke-static/range {p1 .. p7}, Lcom/android/settings_ex/SetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZJ)Landroid/content/Intent;

    move-result-object v0

    .line 137
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 138
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static/range {p1 .. p6}, Lcom/android/settings_ex/SetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 147
    return-object v0
.end method

.method protected getLockPasswordIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "quality"    # I
    .param p3, "minLength"    # I
    .param p4, "maxLength"    # I
    .param p5, "requirePasswordToDecrypt"    # Z
    .param p6, "confirmCredentials"    # Z

    .prologue
    .line 125
    invoke-static/range {p1 .. p6}, Lcom/android/settings_ex/SetupChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v0

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 128
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "challenge"    # J

    .prologue
    .line 162
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings_ex/SetupChooseLockPattern;->createIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v0

    .line 164
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 165
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "pattern"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/SetupChooseLockPattern;->createIntent(Landroid/content/Context;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 174
    return-object v0
.end method

.method protected getLockPatternIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requirePassword"    # Z
    .param p3, "confirmCredentials"    # Z

    .prologue
    .line 153
    invoke-static {p1, p2, p3}, Lcom/android/settings_ex/SetupChooseLockPattern;->createIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings_ex/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 156
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 87
    if-eqz p2, :cond_1

    .line 88
    if-nez p3, :cond_0

    .line 89
    new-instance p3, Landroid/content/Intent;

    .end local p3    # "data":Landroid/content/Intent;
    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 93
    .restart local p3    # "data":Landroid/content/Intent;
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v1, ":settings:password_quality"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 68
    const v2, 0x7f04010a

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/SetupWizardListLayout;

    .line 70
    .local v0, "layout":Lcom/android/setupwizardlib/SetupWizardListLayout;
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/setupwizardlib/SetupWizardListLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v0}, Lcom/android/setupwizardlib/SetupWizardListLayout;->getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;

    move-result-object v1

    .line 73
    .local v1, "navigationBar":Lcom/android/setupwizardlib/view/NavigationBar;
    invoke-virtual {v1}, Lcom/android/setupwizardlib/view/NavigationBar;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    invoke-virtual {v1, p0}, Lcom/android/setupwizardlib/view/NavigationBar;->setNavigationBarListener(Lcom/android/setupwizardlib/view/NavigationBar$NavigationBarListener;)V

    .line 76
    return-object v0
.end method

.method public onNavigateBack()V
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 189
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 192
    :cond_0
    return-void
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/SetupWizardUtils;->setImmersiveMode(Landroid/app/Activity;)V

    .line 83
    return-void
.end method
