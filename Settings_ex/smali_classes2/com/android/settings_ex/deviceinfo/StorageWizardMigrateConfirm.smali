.class public Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;
.super Lcom/android/settings_ex/deviceinfo/StorageWizardBase;
.source "StorageWizardMigrateConfirm.java"


# instance fields
.field private mEstimate:Lcom/android/settings_ex/deviceinfo/MigrateEstimateTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v3, 0x7f0401a9

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->setContentView(I)V

    .line 43
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v3, :cond_0

    .line 44
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 48
    .local v1, "sourceVol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    if-nez v3, :cond_2

    .line 49
    :cond_1
    const-string/jumbo v3, "StorageSettings"

    const-string/jumbo v4, "Missing either source or target volume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->finish()V

    .line 51
    return-void

    .line 54
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mStorage:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "sourceDescrip":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mStorage:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "targetDescrip":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->setIllustrationType(I)V

    .line 58
    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v5

    const v4, 0x7f0e08c9

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->setHeaderText(I[Ljava/lang/String;)V

    .line 59
    new-array v3, v5, [Ljava/lang/String;

    const v4, 0x7f0e0869

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->setBodyText(I[Ljava/lang/String;)V

    .line 60
    new-array v3, v6, [Ljava/lang/String;

    aput-object v2, v3, v5

    const v4, 0x7f0e08cd

    invoke-virtual {p0, v4, v3}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->setSecondaryBodyText(I[Ljava/lang/String;)V

    .line 62
    new-instance v3, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm$1;

    invoke-direct {v3, p0, p0, v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm$1;-><init>(Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings_ex/deviceinfo/MigrateEstimateTask;

    .line 70
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings_ex/deviceinfo/MigrateEstimateTask;

    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/MigrateEstimateTask;->copyFrom(Landroid/content/Intent;)V

    .line 71
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mEstimate:Lcom/android/settings_ex/deviceinfo/MigrateEstimateTask;

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/MigrateEstimateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->getNextButton()Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f0e08cb

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 38
    return-void
.end method

.method public onNavigateNext()V
    .locals 8

    .prologue
    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 105
    .local v3, "moveId":I
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateProgress;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.os.storage.extra.VOLUME_ID"

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v5, "android.content.pm.extra.MOVE_ID"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    .line 77
    return-void

    .line 97
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "moveId":I
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/IllegalStateException;
    const v5, 0x7f0e0a1e

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 99
    const/4 v6, 0x1

    .line 98
    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    .line 102
    return-void

    .line 83
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "storage"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 86
    .local v4, "sm":Landroid/os/storage/StorageManager;
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getPrimaryStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.os.storage.extra.DISK_ID"

    .line 89
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "android.os.storage.extra.DISK_ID"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->startActivity(Landroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardMigrateConfirm;->finishAffinity()V

    .line 93
    return-void

    .line 95
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    throw v0
.end method
