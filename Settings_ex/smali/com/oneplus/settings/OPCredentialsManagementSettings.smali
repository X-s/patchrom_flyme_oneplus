.class public Lcom/oneplus/settings/OPCredentialsManagementSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPCredentialsManagementSettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPCredentialsManagementSettings$SecuritySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final KEY_CREDENTIALS_INSTALL:Ljava/lang/String; = "credentials_install"

.field private static final KEY_CREDENTIALS_MANAGER:Ljava/lang/String; = "credentials_management"

.field private static final KEY_CREDENTIAL_STORAGE_TYPE:Ljava/lang/String; = "credential_storage_type"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "credentials_reset"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field static final TAG:Ljava/lang/String; = "SecuritySettings"

.field private static final TRUST_AGENT_CLICK_INTENT:Ljava/lang/String; = "trust_agent_click_intent"


# instance fields
.field private mIsPrimary:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mResetCredentials:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Lcom/oneplus/settings/OPCredentialsManagementSettings$SecuritySearchIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPCredentialsManagementSettings$SecuritySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPCredentialsManagementSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 122
    return-void
.end method

.method private createCredentialPreference()V
    .locals 6

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/oneplus/settings/OPCredentialsManagementSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 99
    .local v1, "root":Landroid/preference/PreferenceScreen;
    const-string v4, "credentials_reset"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/OPCredentialsManagementSettings;->mResetCredentials:Landroid/preference/Preference;

    .line 100
    invoke-virtual {p0}, Lcom/oneplus/settings/OPCredentialsManagementSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 101
    .local v3, "um":Landroid/os/UserManager;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/settings/OPCredentialsManagementSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 103
    const-string v4, "no_config_credentials"

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 104
    const-string v4, "credential_storage_type"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 106
    .local v0, "credentialStorageType":Landroid/preference/Preference;
    iget-object v4, p0, Lcom/oneplus/settings/OPCredentialsManagementSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->isHardwareBacked()Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0c09cf

    .line 108
    .local v2, "storageSummaryRes":I
    :goto_0
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 114
    .end local v0    # "credentialStorageType":Landroid/preference/Preference;
    .end local v2    # "storageSummaryRes":I
    :goto_1
    return-void

    .line 106
    .restart local v0    # "credentialStorageType":Landroid/preference/Preference;
    :cond_0
    const v2, 0x7f0c09d0

    goto :goto_0

    .line 110
    .end local v0    # "credentialStorageType":Landroid/preference/Preference;
    :cond_1
    const-string v4, "credentials_reset"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 111
    const-string v4, "credentials_install"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 112
    const-string v4, "credential_storage_type"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0xef

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPCredentialsManagementSettings;->addPreferencesFromResource(I)V

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroy()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 89
    invoke-direct {p0}, Lcom/oneplus/settings/OPCredentialsManagementSettings;->createCredentialPreference()V

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/OPCredentialsManagementSettings;->mResetCredentials:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/oneplus/settings/OPCredentialsManagementSettings;->mResetCredentials:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/oneplus/settings/OPCredentialsManagementSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 94
    :cond_0
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method
