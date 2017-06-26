.class public Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PublicVolumeSettings.java"


# instance fields
.field private mDisk:Landroid/os/storage/DiskInfo;

.field private mFormatPrivate:Landroid/preference/Preference;

.field private mFormatPublic:Landroid/preference/Preference;

.field private mIsPermittedToAdopt:Z

.field private mMount:Landroid/preference/Preference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

.field private mUnmount:Landroid/preference/Preference;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 227
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;
    .param p1, "x1"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private addPreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 174
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOrder(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 176
    return-void
.end method

.method private buildAction(I)Landroid/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    .line 179
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "pref":Landroid/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(I)V

    .line 181
    return-object v0
.end method

.method private isVolumeValid()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    .line 89
    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 91
    const-string v4, "android.provider.action.DOCUMENT_ROOT_SETTINGS"

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 94
    .local v2, "rootUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "fsUuid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 101
    .end local v1    # "fsUuid":Ljava/lang/String;
    .end local v2    # "rootUri":Landroid/net/Uri;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 102
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 122
    :cond_0
    :goto_2
    return-void

    .line 86
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "volId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v3}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    goto :goto_1

    .line 106
    .end local v3    # "volId":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    .line 107
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 111
    const v4, 0x7f08001e

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->addPreferencesFromResource(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 114
    new-instance v4, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    invoke-direct {v4, v0}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    .line 116
    const v4, 0x7f0c0665

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mMount:Landroid/preference/Preference;

    .line 117
    const v4, 0x7f0c0666

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/preference/Preference;

    .line 118
    const v4, 0x7f0c0667

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/preference/Preference;

    .line 119
    iget-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz v4, :cond_0

    .line 120
    const v4, 0x7f0c0669

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/preference/Preference;

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 203
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 208
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mMount:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 209
    new-instance v2, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, v0, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 224
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/preference/Preference;

    if-ne p2, v2, :cond_2

    .line 211
    new-instance v2, Lcom/android/settings_ex/deviceinfo/StorageSettings$UnmountTask;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, v0, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings$UnmountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings$UnmountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 212
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/preference/Preference;

    if-ne p2, v2, :cond_3

    .line 213
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 214
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.os.storage.extra.DISK_ID"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v2, "format_private"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 218
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 219
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.os.storage.extra.DISK_ID"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const-string v2, "format_private"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 190
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->update()V

    goto :goto_0
.end method

.method public update()V
    .locals 18

    .prologue
    .line 125
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v9

    if-nez v9, :cond_1

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v14, v15}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 133
    .local v2, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 135
    .local v8, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 137
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    .line 141
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v10

    .line 142
    .local v10, "totalBytes":J
    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v6

    .line 143
    .local v6, "freeBytes":J
    sub-long v12, v10, v6

    .line 145
    .local v12, "usedBytes":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v14, 0x0

    invoke-static {v9, v12, v13, v14}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v5

    .line 146
    .local v5, "result":Landroid/text/format/Formatter$BytesResult;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    const v14, 0x7f0c067a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/CharSequence;

    const/16 v16, 0x0

    iget-object v0, v5, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    iget-object v0, v5, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    const v14, 0x7f0c067b

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    const-wide/16 v14, 0x64

    mul-long/2addr v14, v12

    div-long/2addr v14, v10

    long-to-int v14, v14

    invoke-virtual {v9, v14}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setPercent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "result":Landroid/text/format/Formatter$BytesResult;
    .end local v6    # "freeBytes":J
    .end local v10    # "totalBytes":J
    .end local v12    # "usedBytes":J
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v9

    if-nez v9, :cond_3

    .line 162
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mMount:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    .line 164
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v9}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 165
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    .line 167
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v9}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz v9, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 156
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "result":Landroid/text/format/Formatter$BytesResult;
    .restart local v6    # "freeBytes":J
    .restart local v10    # "totalBytes":J
    .restart local v12    # "usedBytes":J
    :catch_0
    move-exception v3

    .line 157
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "PublicVolumeSettings"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
