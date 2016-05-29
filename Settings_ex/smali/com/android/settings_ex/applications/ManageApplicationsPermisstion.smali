.class public Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ManageApplicationsPermisstion.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/search/Indexable;


# static fields
.field private static final KEY_APP_NOTIFICATION:Ljava/lang/String; = "application_notification"

.field private static final KEY_APP_PERMISSTION:Ljava/lang/String; = "application_permisstion_category"

.field private static final KEY_APP_PERMISSTION_CONTROL:Ljava/lang/String; = "application_permisstion_control"

.field private static final KEY_APP_PERMISSTION_MANAGE:Ljava/lang/String; = "application_permisstion_manage"

.field private static final KEY_AUTO_APPLICATION:Ljava/lang/String; = "auto_application"

.field private static final KEY_OTHERS_APP_PERMISSTION_MANAGE:Ljava/lang/String; = "others_applications_permission_settings"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;


# instance fields
.field private appNotification:Landroid/preference/Preference;

.field private applicationPermisstionManage:Landroid/preference/Preference;

.field private autoApplication:Landroid/preference/Preference;

.field private mCategory:Landroid/preference/PreferenceCategory;

.field private mIsPrimary:Z

.field private mToggleAppControl:Landroid/preference/SwitchPreference;

.field private mToggleAppInstallation:Landroid/preference/SwitchPreference;

.field private mWarnInstallApps:Landroid/content/DialogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 233
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion$1;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 64
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 112
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 116
    :cond_0
    const v2, 0x7f06002e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->addPreferencesFromResource(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 120
    const-string v2, "application_permisstion_control"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mToggleAppControl:Landroid/preference/SwitchPreference;

    .line 121
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mToggleAppControl:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    const-string v2, "auto_application"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->autoApplication:Landroid/preference/Preference;

    .line 124
    const-string v2, "application_notification"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->appNotification:Landroid/preference/Preference;

    .line 125
    const-string v2, "application_permisstion_manage"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->applicationPermisstionManage:Landroid/preference/Preference;

    .line 127
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mToggleAppControl:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->autoApplication:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 130
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->appNotification:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->applicationPermisstionManage:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "user"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 144
    .local v1, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mIsPrimary:Z

    .line 146
    const-string v2, "toggle_install_applications"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    .line 147
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->isNonMarketAppsAllowed()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 149
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    iget-boolean v4, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mIsPrimary:Z

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 150
    const-string v2, "no_install_unknown_sources"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "no_install_apps"

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 155
    :cond_2
    return-object v0

    .line 133
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->autoApplication:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 134
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->appNotification:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 135
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->applicationPermisstionManage:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .restart local v1    # "um":Landroid/os/UserManager;
    :cond_4
    move v2, v3

    .line 144
    goto :goto_1
.end method

.method private isNonMarketAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setNonMarketAppsAllowed(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 211
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_install_unknown_sources"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private warnAppInstallation()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090541

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mWarnInstallApps:Landroid/content/DialogInterface;

    .line 206
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-ne p1, v1, :cond_0

    .line 223
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const/4 v0, 0x1

    .line 224
    .local v0, "turnOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->setNonMarketAppsAllowed(Z)V

    .line 225
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 230
    .end local v0    # "turnOn":Z
    :cond_0
    return-void

    .line 223
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mWarnInstallApps:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mWarnInstallApps:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 101
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 161
    const/4 v1, 0x1

    .line 162
    .local v1, "result":Z
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 166
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const-string v3, "toggle_install_applications"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 167
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mToggleAppInstallation:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 169
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->warnAppInstallation()V

    .line 172
    const/4 v1, 0x0

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 174
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->setNonMarketAppsAllowed(Z)V

    goto :goto_0

    .line 176
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    const-string v3, "application_permisstion_control"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->mToggleAppControl:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->autoApplication:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->appNotification:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->applicationPermisstionManage:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 186
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->autoApplication:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->appNotification:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 188
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->applicationPermisstionManage:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplicationsPermisstion;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 92
    return-void
.end method
