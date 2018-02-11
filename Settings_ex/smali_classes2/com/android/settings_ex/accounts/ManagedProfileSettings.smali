.class public Lcom/android/settings_ex/accounts/ManagedProfileSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "ManagedProfileSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final KEY_CONTACT:Ljava/lang/String; = "contacts_search"

.field private static final KEY_WORK_MODE:Ljava/lang/String; = "work_mode"

.field private static final TAG:Ljava/lang/String; = "ManagedProfileSettings"


# instance fields
.field private mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

.field private mManagedUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;

.field private mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/accounts/ManagedProfileSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/accounts/ManagedProfileSettings;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/accounts/ManagedProfileSettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getManagedUserFromArgument()Landroid/os/UserHandle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 94
    const-string/jumbo v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 95
    .local v1, "userHandle":Landroid/os/UserHandle;
    if-eqz v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    return-object v1

    .line 101
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    return-object v4
.end method

.method private loadDataAndPopulateUi()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v2, :cond_0

    .line 106
    iget-object v5, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 107
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v6, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v6}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    .line 106
    :goto_0
    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 112
    const-string/jumbo v5, "managed_profile_contact_remote_search"

    iget-object v6, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 111
    invoke-static {v2, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 113
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    .line 116
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 115
    invoke-static {v2, v3}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRemoteContactSearchDisallowed(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 117
    .local v0, "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 104
    .end local v0    # "enforcedAdmin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .end local v1    # "value":I
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 107
    goto :goto_0

    .restart local v1    # "value":I
    :cond_3
    move v4, v3

    .line 113
    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x191

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->addPreferencesFromResource(I)V

    .line 65
    const-string/jumbo v0, "work_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    const-string/jumbo v0, "contacts_search"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    .line 68
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mContext:Landroid/content/Context;

    .line 70
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->getManagedUserFromArgument()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 75
    :cond_0
    new-instance v0, Lcom/android/settings_ex/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings_ex/accounts/ManagedProfileSettings;Lcom/android/settings_ex/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings_ex/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 129
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    .line 130
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->trySetQuietModeDisabled(ILandroid/content/IntentSender;)Z

    .line 135
    :goto_0
    return v4

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/os/UserManager;->setQuietModeEnabled(IZ)V

    goto :goto_0

    .line 137
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-ne p1, v1, :cond_3

    .line 138
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 139
    .local v0, "value":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 140
    const-string/jumbo v2, "managed_profile_contact_remote_search"

    iget-object v3, p0, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 139
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 141
    return v4

    .line 138
    .end local v0    # "value":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_1

    .line 143
    .end local v0    # "value":I
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/accounts/ManagedProfileSettings;->loadDataAndPopulateUi()V

    .line 80
    return-void
.end method
