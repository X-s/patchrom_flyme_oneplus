.class public Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "PublicVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;,
        Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$2;
    }
.end annotation


# instance fields
.field private mDisk:Landroid/os/storage/DiskInfo;

.field private mFormatPrivate:Landroid/support/v7/preference/Preference;

.field private mFormatPublic:Landroid/support/v7/preference/Preference;

.field private mIsPermittedToAdopt:Z

.field private mMount:Landroid/support/v7/preference/Preference;

.field private final mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

.field private mUnmount:Landroid/widget/Button;

.field private final mUnmountListener:Landroid/view/View$OnClickListener;

.field private mVolume:Landroid/os/storage/VolumeInfo;

.field private mVolumeId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/StorageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 240
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$1;-><init>(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mUnmountListener:Landroid/view/View$OnClickListener;

    .line 247
    new-instance v0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings$2;-><init>(Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 55
    return-void
.end method

.method private addPreference(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 189
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 188
    return-void
.end method

.method private buildAction(I)Landroid/support/v7/preference/Preference;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    .line 194
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 196
    return-object v0
.end method

.method private isVolumeValid()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v0

    .line 74
    :cond_0
    return v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x2a

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 134
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x7f0f0254

    .line 133
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 135
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v0

    .line 136
    .local v0, "buttonBar":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 137
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 139
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 141
    const/4 v5, -0x1

    .line 142
    const/4 v6, -0x2

    .line 140
    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 89
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 89
    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    .line 92
    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 94
    const-string/jumbo v4, "android.provider.action.DOCUMENT_ROOT_SETTINGS"

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 97
    .local v2, "rootUri":Landroid/net/Uri;
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "fsUuid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 104
    .end local v1    # "fsUuid":Ljava/lang/String;
    .end local v2    # "rootUri":Landroid/net/Uri;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v4

    if-nez v4, :cond_3

    .line 105
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 106
    return-void

    :cond_1
    move v4, v5

    .line 90
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v6, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, "volId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v3}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    goto :goto_1

    .line 109
    .end local v3    # "volId":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    .line 110
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v4}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    .line 114
    const v4, 0x7f08002a

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->addPreferencesFromResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 117
    new-instance v4, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    .line 119
    const v4, 0x7f0e0885

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mMount:Landroid/support/v7/preference/Preference;

    .line 120
    new-instance v4, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    .line 121
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    const v5, 0x7f0e0886

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 122
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mUnmount:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mUnmountListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v4, 0x7f0e0887

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/support/v7/preference/Preference;

    .line 124
    iget-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz v4, :cond_4

    .line 125
    const v4, 0x7f0e0889

    invoke-direct {p0, v4}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->buildAction(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/support/v7/preference/Preference;

    .line 84
    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 215
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5
    .param p1, "pref"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 223
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mMount:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_1

    .line 224
    new-instance v2, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, v0, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_2

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.os.storage.extra.DISK_ID"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string/jumbo v2, "format_private"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 230
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/support/v7/preference/Preference;

    if-ne p1, v2, :cond_0

    .line 231
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.os.storage.extra.DISK_ID"

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v3}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string/jumbo v2, "format_private"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onResume()V

    .line 204
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolumeId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 205
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 207
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->update()V

    .line 200
    return-void
.end method

.method public update()V
    .locals 15

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->isVolumeValid()Z

    move-result v10

    if-nez v10, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    .line 150
    return-void

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v12, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v11, v12}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 156
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    .line 158
    .local v5, "screen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 160
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 161
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/support/v7/preference/Preference;)V

    .line 163
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v1

    .line 164
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    .line 165
    .local v6, "totalBytes":J
    invoke-virtual {v1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v2

    .line 166
    .local v2, "freeBytes":J
    sub-long v8, v6, v2

    .line 168
    .local v8, "usedBytes":J
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v8, v9, v11}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v4

    .line 169
    .local v4, "result":Landroid/text/format/Formatter$BytesResult;
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    const v11, 0x7f0e089c

    invoke-virtual {p0, v11}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/CharSequence;

    .line 170
    iget-object v13, v4, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    iget-object v13, v4, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    .line 169
    invoke-static {v11, v12}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    .line 172
    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    .line 171
    const v12, 0x7f0e089d

    invoke-virtual {p0, v12, v11}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mSummary:Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;

    const-wide/16 v12, 0x64

    mul-long/2addr v12, v8

    div-long/2addr v12, v6

    long-to-int v11, v12

    invoke-virtual {v10, v11}, Lcom/android/settings_ex/deviceinfo/StorageSummaryPreference;->setPercent(I)V

    .line 176
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "freeBytes":J
    .end local v4    # "result":Landroid/text/format/Formatter$BytesResult;
    .end local v6    # "totalBytes":J
    .end local v8    # "usedBytes":J
    :cond_1
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v10

    if-nez v10, :cond_2

    .line 177
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mMount:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/support/v7/preference/Preference;)V

    .line 179
    :cond_2
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v10}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 180
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->getButtonBar()Landroid/view/ViewGroup;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 182
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPublic:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/support/v7/preference/Preference;)V

    .line 183
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v10}, Landroid/os/storage/DiskInfo;->isAdoptable()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-boolean v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mIsPermittedToAdopt:Z

    if-eqz v10, :cond_4

    .line 184
    iget-object v10, p0, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->mFormatPrivate:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/deviceinfo/PublicVolumeSettings;->addPreference(Landroid/support/v7/preference/Preference;)V

    .line 147
    :cond_4
    return-void
.end method
