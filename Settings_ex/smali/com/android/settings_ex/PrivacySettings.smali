.class public Lcom/android/settings_ex/PrivacySettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/PrivacySettings$PrivacySearchIndexProvider;
    }
.end annotation


# static fields
.field private static final AUTO_RESTORE:Ljava/lang/String; = "auto_restore"

.field private static final BACKUP_DATA:Ljava/lang/String; = "backup_data"

.field private static final BACKUP_INACTIVE:Ljava/lang/String; = "backup_inactive"

.field private static final CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"

.field private static final FACTORY_RESET:Ljava/lang/String; = "factory_reset"

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.settings"

.field private static final NETWORK_RESET:Ljava/lang/String; = "network_reset"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "PrivacySettings"


# instance fields
.field private mAutoRestore:Landroid/preference/SwitchPreference;

.field private mBackup:Landroid/preference/PreferenceScreen;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mEnabled:Z

.field private preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 244
    new-instance v0, Lcom/android/settings_ex/PrivacySettings$PrivacySearchIndexProvider;

    invoke-direct {v0}, Lcom/android/settings_ex/PrivacySettings$PrivacySearchIndexProvider;-><init>()V

    sput-object v0, Lcom/android/settings_ex/PrivacySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 174
    new-instance v0, Lcom/android/settings_ex/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/PrivacySettings$1;-><init>(Lcom/android/settings_ex/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/PrivacySettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/PrivacySettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/android/settings_ex/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "nonVisibleKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 285
    const-string v4, "backup"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 287
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    const/4 v2, 0x0

    .line 289
    .local v2, "isServiceActive":Z
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 296
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.google.settings"

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    .line 298
    .local v3, "vendorSpecific":Z
    :cond_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_2

    .line 299
    :cond_1
    const-string v4, "backup_inactive"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_2
    if-nez v3, :cond_3

    if-nez v2, :cond_4

    .line 302
    :cond_3
    const-string v4, "backup_data"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 303
    const-string v4, "auto_restore"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 304
    const-string v4, "configure_account"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_4
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_factory_reset"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 308
    const-string v4, "factory_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_5
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    const-string v5, "no_network_reset"

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 312
    const-string v4, "network_reset"

    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_6
    return-void

    .line 291
    .end local v3    # "vendorSpecific":Z
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "PrivacySettings"

    const-string v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 117
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings_ex/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3, p0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 120
    .local v0, "lock":Lcom/android/settings_ex/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->lockMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 130
    const v3, 0x7f0c0759

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 134
    :goto_0
    const v3, 0x7f0c0122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v3}, Lcom/android/settings_ex/ChooseLockSettingsHelper;->launchConfirmationActivityExt(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    return v3

    .line 122
    :pswitch_0
    const v3, 0x7f0c075a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 124
    goto :goto_0

    .line 126
    :pswitch_1
    const v3, 0x7f0c075b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 128
    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0c0a1b

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 200
    .local v5, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 201
    .local v0, "backupEnabled":Z
    const/4 v1, 0x0

    .line 202
    .local v1, "configIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 204
    .local v2, "configSummary":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 205
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v6

    .line 206
    .local v6, "transport":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 207
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7, v6}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    iget-object v10, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    const v7, 0x7f0c08ce

    :goto_0
    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v6    # "transport":Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    const-string v7, "backup_auto_restore"

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v8, :cond_1

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 218
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 220
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v3, v8

    .line 222
    .local v3, "configureEnabled":Z
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 223
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 224
    invoke-direct {p0, v2}, Lcom/android/settings_ex/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 225
    return-void

    .line 209
    .end local v3    # "configureEnabled":Z
    .restart local v6    # "transport":Ljava/lang/String;
    :cond_0
    const v7, 0x7f0c08cf

    goto :goto_0

    .line 211
    .end local v6    # "transport":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 213
    .local v4, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    move v7, v9

    .line 216
    goto :goto_2

    :cond_2
    move v3, v9

    .line 220
    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 238
    const v0, 0x7f0c0bcf

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x51

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    const/16 v0, 0x38

    if-eq p1, v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->finish()V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->isOwner()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/PrivacySettings;->mEnabled:Z

    .line 78
    iget-boolean v5, p0, Lcom/android/settings_ex/PrivacySettings;->mEnabled:Z

    if-nez v5, :cond_0

    .line 112
    :goto_0
    return-void

    .line 82
    :cond_0
    const v5, 0x7f08005f

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/PrivacySettings;->addPreferencesFromResource(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 84
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    const-string v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 87
    const-string v5, "backup_data"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/PrivacySettings;->mBackup:Landroid/preference/PreferenceScreen;

    .line 89
    const-string v5, "auto_restore"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    .line 90
    iget-object v5, p0, Lcom/android/settings_ex/PrivacySettings;->mAutoRestore:Landroid/preference/SwitchPreference;

    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings;->preferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 92
    const-string v5, "configure_account"

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings_ex/PrivacySettings;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 94
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 95
    .local v1, "keysToRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings_ex/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settings_ex/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 96
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    .line 97
    .local v4, "screenPreferenceCount":I
    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 98
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 99
    .local v2, "preference":Landroid/preference/Preference;
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 97
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 104
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateToggles()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 143
    iget-boolean v0, p0, Lcom/android/settings_ex/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/settings_ex/PrivacySettings;->updateToggles()V

    .line 146
    :cond_0
    return-void
.end method
