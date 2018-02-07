.class public Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;
.super Landroid/os/AsyncTask;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartitionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# instance fields
.field public mActivity:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

.field private volatile mInternalBench:J

.field private volatile mPrivateBench:J

.field private volatile mProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    .line 84
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v7, 0x0

    .line 94
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .line 95
    .local v0, "activity":Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;
    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    iget-object v3, v4, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mStorage:Landroid/os/storage/StorageManager;

    .line 97
    .local v3, "storage":Landroid/os/storage/StorageManager;
    :try_start_0
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->-get0(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->partitionPrivate(Ljava/lang/String;)V

    .line 99
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/16 v5, 0x28

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V

    .line 101
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mInternalBench:J

    .line 102
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->publishProgress([Ljava/lang/Object;)V

    .line 104
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->findFirstVolume(I)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 105
    .local v2, "privateVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->benchmark(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    .line 110
    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->isDefaultPrimary()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v4

    .line 112
    const-string/jumbo v5, "primary_physical"

    .line 111
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 110
    if-eqz v4, :cond_0

    .line 113
    const-string/jumbo v4, "StorageSettings"

    const-string/jumbo v5, "Just formatted primary physical; silently moving storage to new emulated volume"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SilentObserver;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SilentObserver;-><init>(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SilentObserver;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/storage/StorageManager;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V

    .line 121
    .end local v2    # "privateVol":Landroid/os/storage/VolumeInfo;
    :cond_0
    :goto_0
    return-object v7

    .line 119
    :cond_1
    iget-object v4, v0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->partitionPublic(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 93
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Exception;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .line 141
    .local v0, "activity":Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    return-void

    .line 145
    :cond_0
    if-eqz p1, :cond_1

    .line 146
    const-string/jumbo v3, "StorageSettings"

    const-string/jumbo v4, "Failed to partition"

    invoke-static {v3, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 148
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    .line 149
    return-void

    .line 152
    :cond_1
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->-get0(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 153
    iget-wide v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mInternalBench:J

    long-to-float v3, v4

    iget-wide v4, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mPrivateBench:J

    long-to-float v4, v4

    div-float v2, v3, v4

    .line 154
    .local v2, "pct":F
    const-string/jumbo v3, "StorageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "New volume is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x the speed of internal"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_2

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    .line 160
    :cond_2
    new-instance v1, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;

    invoke-direct {v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;-><init>()V

    .line 161
    .local v1, "dialog":Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "slow_warning"

    invoke-virtual {v1, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 139
    .end local v1    # "dialog":Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$SlowWarningFragment;
    .end local v2    # "pct":F
    :goto_0
    return-void

    .line 163
    .restart local v2    # "pct":F
    :cond_3
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->-wrap2(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)V

    goto :goto_0

    .line 166
    .end local v2    # "pct":F
    :cond_4
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->-wrap2(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Object;

    .prologue
    .line 139
    check-cast p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onPostExecute(Ljava/lang/Exception;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 129
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    .line 130
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    iget v1, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    .line 128
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "progress"    # [Ljava/lang/Object;

    .prologue
    .line 128
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "progress":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setActivity(Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    .line 135
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mActivity:Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;

    iget v1, p0, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress$PartitionTask;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/deviceinfo/StorageWizardFormatProgress;->setCurrentProgress(I)V

    .line 133
    return-void
.end method
