.class public Lcom/oneplus/settings/OPPrivacySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPPrivacySettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/oneplus/settings/OPPrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 37
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPPrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 40
    .local v0, "lock":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->lockMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 50
    const v3, 0x7f0905be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 54
    :goto_0
    const v3, 0x7f0900a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivityExt(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 42
    :pswitch_0
    const v3, 0x7f0905bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 44
    goto :goto_0

    .line 46
    :pswitch_1
    const v3, 0x7f0905c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 48
    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 61
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    const/16 v0, 0x38

    if-eq p1, v0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/settings/OPPrivacySettings;->finish()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/settings/OPPrivacySettings;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f060040

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPPrivacySettings;->addPreferencesFromResource(I)V

    .line 19
    const/16 v0, 0x38

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPPrivacySettings;->runKeyguardConfirmation(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 32
    return-void
.end method
