.class public abstract Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings_ex/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# instance fields
.field private mDark:Z

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    return-void
.end method

.method private getFragment()Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
    .locals 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f12020e

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 76
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    .line 79
    .end local v0    # "fragment":Landroid/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 34
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const v2, 0x7f0d0077

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 36
    iput-boolean v3, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mDark:Z

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 40
    .local v0, "deviceLocked":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v5, 0x80000

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 46
    :cond_1
    const v2, 0x7f0c075a

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 47
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 52
    :cond_2
    if-eqz p1, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    .line 53
    return-void

    :cond_3
    move v2, v4

    .line 52
    goto :goto_0
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->onEnterAnimationComplete()V

    .line 85
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 89
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 57
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 59
    const/4 v0, 0x1

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->onResume()V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mDark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 72
    :cond_0
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 93
    return-void
.end method

.method public startEnterAnimation()V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 97
    return-void
.end method
