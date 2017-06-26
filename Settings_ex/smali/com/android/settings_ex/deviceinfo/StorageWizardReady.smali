.class public Lcom/android/settings_ex/deviceinfo/StorageWizardReady;
.super Lcom/android/settings_ex/deviceinfo/StorageWizardBase;
.source "StorageWizardReady.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
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

    .line 27
    invoke-super {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v2, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->finish()V

    .line 51
    :goto_0
    return-void

    .line 32
    :cond_0
    const v2, 0x7f04011e

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->setContentView(I)V

    .line 34
    const v2, 0x7f0c06aa

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->setHeaderText(I[Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 39
    .local v1, "publicVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 40
    .local v0, "privateVol":Landroid/os/storage/VolumeInfo;
    if-eqz v1, :cond_2

    .line 41
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->setIllustrationInternal(Z)V

    .line 42
    const v2, 0x7f0c06ab

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    .line 50
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const v3, 0x7f0c03a6

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 44
    :cond_2
    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->setIllustrationInternal(Z)V

    .line 46
    const v2, 0x7f0c06ac

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->setBodyText(I[Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onNavigateNext()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/StorageWizardReady;->finishAffinity()V

    .line 56
    return-void
.end method
