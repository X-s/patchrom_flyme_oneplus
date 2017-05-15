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
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardBase;-><init>()V

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->onFormatFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getDiskDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getGenericDiskDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDiskDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGenericDiskDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const v0, 0x104049d

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const v0, 0x104049f

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onFormatFinished()V
    .locals 6

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "forget_uuid"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "forgetUuid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 216
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v4, v0}, Landroid/os/storage/StorageManager;->forgetVolume(Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    if-eqz v4, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 224
    .local v3, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v3, :cond_1

    const-string v4, "private"

    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 230
    .end local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    .local v2, "offerMigrate":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 231
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrate;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.DISK_ID"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    .line 239
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    .line 240
    return-void

    .line 224
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "offerMigrate":Z
    .restart local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 227
    .end local v3    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "offerMigrate":Z
    goto :goto_0

    .line 235
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "android.os.storage.extra.DISK_ID"

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
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

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->finish()V

    .line 76
    :goto_0
    return-void

    .line 56
    :cond_0
    const v0, 0x7f040114

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setContentView(I)V

    .line 57
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setKeepScreenOn(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "format_private"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    .line 61
    iget-boolean v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setIllustrationInternal(Z)V

    .line 63
    const v0, 0x7f0c066f

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setHeaderText(I[Ljava/lang/String;)V

    .line 64
    const v0, 0x7f0c0670

    new-array v1, v4, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v2}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setBodyText(I[Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-direct {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    return-object v0
.end method
