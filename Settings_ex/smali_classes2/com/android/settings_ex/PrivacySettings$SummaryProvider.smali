.class Lcom/android/settings_ex/PrivacySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/PrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "summaryLoader"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/android/settings_ex/PrivacySettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 239
    iput-object p2, p0, Lcom/android/settings_ex/PrivacySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    .line 237
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 8
    .param p1, "listening"    # Z

    .prologue
    const/4 v7, 0x1

    .line 245
    new-array v5, v7, [I

    const/4 v6, 0x0

    aput v7, v5, v6

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 247
    :cond_0
    if-eqz p1, :cond_1

    .line 249
    const-string/jumbo v5, "backup"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 248
    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 251
    .local v1, "backupManager":Landroid/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 252
    .local v0, "backupEnabled":Z
    if-eqz v0, :cond_3

    .line 253
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "transport":Ljava/lang/String;
    invoke-interface {v1, v4}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "configSummary":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 256
    iget-object v5, p0, Lcom/android/settings_ex/PrivacySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-virtual {v5, p0, v2}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 243
    .end local v0    # "backupEnabled":Z
    .end local v1    # "backupManager":Landroid/app/backup/IBackupManager;
    .end local v2    # "configSummary":Ljava/lang/String;
    .end local v4    # "transport":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 258
    .restart local v0    # "backupEnabled":Z
    .restart local v1    # "backupManager":Landroid/app/backup/IBackupManager;
    .restart local v2    # "configSummary":Ljava/lang/String;
    .restart local v4    # "transport":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/PrivacySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 259
    const v7, 0x7f0e0c28

    .line 258
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    .end local v0    # "backupEnabled":Z
    .end local v2    # "configSummary":Ljava/lang/String;
    .end local v4    # "transport":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 262
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "backupEnabled":Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/PrivacySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings_ex/dashboard/SummaryLoader;

    iget-object v6, p0, Lcom/android/settings_ex/PrivacySettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 263
    const v7, 0x7f0e0fe8

    .line 262
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/android/settings_ex/dashboard/SummaryLoader;->setSummary(Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
