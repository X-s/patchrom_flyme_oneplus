.class public abstract Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings_ex/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# instance fields
.field private mDark:Z

.field private final mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsActivity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity$1;-><init>(Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private getFragment()Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f120008

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 81
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    .line 84
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

    .line 36
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    const v2, 0x7f0d0076

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 38
    iput-boolean v3, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mDark:Z

    .line 40
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    .line 42
    .local v0, "deviceLocked":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v5, 0x80000

    invoke-virtual {v2, v5}, Landroid/view/Window;->addFlags(I)V

    .line 49
    :cond_1
    const v2, 0x7f0c072b

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 51
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 56
    :cond_2
    if-eqz p1, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    .line 57
    return-void

    :cond_3
    move v2, v4

    .line 56
    goto :goto_0
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->onEnterAnimationComplete()V

    .line 90
    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 95
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 70
    invoke-super {p0}, Lcom/android/settings_ex/SettingsActivity;->onResume()V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mDark:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationCompleteTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    :cond_0
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 99
    return-void
.end method

.method public startEnterAnimation()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 103
    return-void
.end method
