.class public Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;
.super Lcom/android/settings_ex/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$1;,
        Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SilentObserver;,
        Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;,
        Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;
    }
.end annotation


# static fields
.field private static final TAG_SLOW_WARNING:Ljava/lang/String; = "slow_warning"


# instance fields
.field private mFormatPrivate:Z

.field private mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardBase;-><init>()V

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getDiskDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getGenericDiskDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDiskDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGenericDiskDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const v0, 0x10404be

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const v0, 0x10404c0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFormatFinished()V
    .locals 6

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "forget_uuid"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "forgetUuid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 213
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    if-eqz v4, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 221
    .local v3, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v3, :cond_1

    const-string v4, "private"

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 227
    .end local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    .local v2, "offerMigrate":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 228
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrate;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.DISK_ID"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    .line 236
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    .line 237
    return-void

    .line 221
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "offerMigrate":Z
    .restart local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 224
    .end local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "offerMigrate":Z
    goto :goto_0

    .line 232
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 233
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.DISK_ID"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->finish()V

    .line 77
    :goto_0
    return-void

    .line 57
    :cond_0
    const v0, 0x7f040122

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setContentView(I)V

    .line 58
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setKeepScreenOn(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "format_private"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    .line 62
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setIllustrationInternal(Z)V

    .line 64
    const v0, 0x7f0c069f

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setHeaderText(I[Ljava/lang/String;)V

    .line 65
    const v0, 0x7f0c06a0

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setBodyText(I[Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    .line 70
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    if-nez v0, :cond_1

    .line 71
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-direct {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    return-object v0
.end method
