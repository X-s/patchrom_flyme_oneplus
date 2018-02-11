.class public abstract Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings_ex/SettingsActivity;
.source "OxygenConfirmDeviceCredentialBaseActivity.java"


# static fields
.field private static final STATE_IS_KEYGUARD_LOCKED:Ljava/lang/String; = "STATE_IS_KEYGUARD_LOCKED"


# instance fields
.field private mDark:Z

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private mIsKeyguardLocked:Z

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    .line 26
    return-void
.end method

.method private getFragment()Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f1102ed

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 97
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    if-eqz v1, :cond_0

    .line 98
    check-cast v0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    return-object v0

    .line 100
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    return-object v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings_ex/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v2

    .line 38
    invoke-static {p0, v2}, Lcom/android/settings_ex/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0

    .line 40
    .local v0, "credentialOwnerUserId":I
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings_ex/Utils;->isManagedProfile(Landroid/os/UserManager;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 41
    const v2, 0x7f10041d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 47
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    if-nez p1, :cond_4

    .line 49
    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    .line 48
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    .line 56
    iget-boolean v2, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 57
    const-string/jumbo v5, "com.android.settings_ex.ConfirmCredentials.showWhenLocked"

    .line 56
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v5, 0x80000

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 61
    const-string/jumbo v5, "com.android.settings_ex.ConfirmCredentials.title"

    .line 60
    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 67
    :cond_2
    if-eqz p1, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    .line 37
    return-void

    .line 42
    .end local v1    # "msg":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 43
    const-string/jumbo v5, "com.android.settings_ex.ConfirmCredentials.darkTheme"

    .line 42
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const v2, 0x7f10041c

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 45
    iput-boolean v3, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mDark:Z

    goto :goto_0

    .line 50
    :cond_4
    const-string/jumbo v2, "STATE_IS_KEYGUARD_LOCKED"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_1

    .restart local v1    # "msg":Ljava/lang/CharSequence;
    :cond_5
    move v2, v4

    .line 67
    goto :goto_2
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->onEnterAnimationComplete()V

    .line 106
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 104
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->finish()V

    .line 80
    const/4 v0, 0x1

    return v0

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->onResume()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mDark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 73
    const-string/jumbo v0, "STATE_IS_KEYGUARD_LOCKED"

    iget-boolean v1, p0, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 112
    return-void
.end method

.method public startEnterAnimation()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/android/settings_ex/OxygenConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 116
    return-void
.end method
