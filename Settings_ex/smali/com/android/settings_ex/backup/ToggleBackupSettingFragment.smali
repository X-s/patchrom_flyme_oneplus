.class public Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ToggleBackupSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final BACKUP_TOGGLE:Ljava/lang/String; = "toggle_backup"

.field private static final TAG:Ljava/lang/String; = "ToggleBackupSettingFragment"

.field private static final USER_FULL_DATA_BACKUP_AWARE:Ljava/lang/String; = "user_full_data_backup_aware"


# instance fields
.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mSummaryPreference:Landroid/preference/Preference;

.field protected mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

.field private mWaitingForConfirmationDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->showEraseBackupDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    return-void
.end method

.method private setBackupEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ToggleBackupSettingFragment"

    const-string v2, "Error communicating with BackupManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_full_data_backup_aware"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a24

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 183
    .local v0, "msg":Ljava/lang/CharSequence;
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    .line 186
    new-instance v1, Lcom/oneplus/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0a22

    invoke-virtual {v1, v2}, Lcom/oneplus/app/OPAlertDialog$Builder;->setTitle(I)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/oneplus/app/OPAlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/app/OPAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/app/OPAlertDialog$Builder;->show()Lcom/oneplus/app/OPAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    .line 192
    return-void

    .line 180
    .end local v0    # "msg":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0a23

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/CharSequence;
    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 196
    const/16 v0, 0x51

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment$2;-><init>(Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->show()V

    .line 135
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 150
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 151
    iput-boolean v1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    .line 152
    invoke-direct {p0, v1}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 156
    iput-boolean v1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    .line 157
    invoke-direct {p0, v2}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 61
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 62
    new-instance v1, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment$1;

    invoke-virtual {p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment$1;-><init>(Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/preference/Preference;

    .line 70
    iget-object v1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 71
    iget-object v1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v2, 0x7f040137

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 72
    iget-object v1, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 73
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings_ex/widget/SwitchBar;->hide()V

    .line 109
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x1

    .line 164
    iget-boolean v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mWaitingForConfirmationDialog:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-direct {p0, v1}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->setBackupEnabled(Z)V

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mConfirmDialog:Landroid/app/Dialog;

    .line 144
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onStop()V

    .line 145
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 80
    .local v0, "activity":Lcom/android/settings_ex/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsActivity;->getSwitchBar()Lcom/android/settings_ex/widget/SwitchBar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    .line 81
    iget-object v4, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/settings_ex/widget/SwitchBar;->getSwitch()Lcom/android/settings_ex/widget/ToggleSwitch;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mToggleSwitch:Lcom/android/settings_ex/widget/ToggleSwitch;

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "user_full_data_backup_aware"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    iget-object v4, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v5, 0x7f0c0a25

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    .line 93
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez v4, :cond_1

    move v1, v3

    .line 95
    .local v1, "backupEnabled":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v4, v1}, Lcom/android/settings_ex/widget/SwitchBar;->setCheckedInternal(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v1    # "backupEnabled":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0c0a14

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 101
    return-void

    .line 90
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v5, 0x7f0c0a15

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 93
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v4}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 96
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/settings_ex/backup/ToggleBackupSettingFragment;->mSwitchBar:Lcom/android/settings_ex/widget/SwitchBar;

    invoke-virtual {v4, v3}, Lcom/android/settings_ex/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_2
.end method
