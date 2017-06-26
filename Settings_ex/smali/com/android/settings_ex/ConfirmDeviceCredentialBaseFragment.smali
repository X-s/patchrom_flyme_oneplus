.class public abstract Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;


# static fields
.field public static final ALLOW_FP_AUTHENTICATION:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.allowFpAuthentication"

.field public static final DARK_THEME:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.darkTheme"

.field public static final DETAILS_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.details"

.field public static final HEADER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.header"

.field public static final PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final SHOW_CANCEL_BUTTON:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.showCancelButton"

.field public static final SHOW_WHEN_LOCKED:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.showWhenLocked"

.field public static final TITLE_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmCredentials.title"


# instance fields
.field private mAllowFpAuthentication:Z

.field protected mCancelButton:Landroid/widget/Button;

.field private mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

.field protected mFingerprintIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract authenticationSucceeded()V
.end method

.method public onAuthenticated()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->authenticationSucceeded()V

    .line 114
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    .line 57
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 120
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 103
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 106
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 81
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mAllowFpAuthentication:Z

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->startListening()V

    .line 84
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    const v1, 0x7f12004a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    .line 63
    const v1, 0x7f12004c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 64
    new-instance v3, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    iget-object v4, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    const v1, 0x7f12004b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v3, v4, v1, p0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;)V

    iput-object v3, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 69
    .local v0, "showCancelButton":Z
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment$1;-><init>(Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    return-void

    .line 69
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public prepareEnterAnimation()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method protected setAccessibilityTitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "suplementalText"    # Ljava/lang/CharSequence;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 88
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 89
    const-string v3, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 91
    .local v2, "titleText":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 98
    .end local v2    # "titleText":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v2    # "titleText":Ljava/lang/CharSequence;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "accessibilityTitle":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v0}, Lcom/android/settings_ex/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public startEnterAnimation()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method
