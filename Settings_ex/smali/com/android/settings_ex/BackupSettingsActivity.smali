.class public Lcom/android/settings_ex/BackupSettingsActivity;
.super Landroid/app/Activity;
.source "BackupSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BackupSettingsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings_ex/BackupSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e01a7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "backup":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 48
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 49
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/BackupSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 52
    const-string/jumbo v6, "backup"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 51
    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 55
    .local v2, "bmgr":Landroid/app/backup/IBackupManager;
    :try_start_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-interface {v2, v6}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 61
    :goto_0
    :try_start_2
    const-string/jumbo v6, "backup_services_available"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    const/4 v6, -0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/settings_ex/BackupSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    .end local v2    # "bmgr":Landroid/app/backup/IBackupManager;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/BackupSettingsActivity;->finish()V

    .line 43
    return-void

    .line 56
    .restart local v2    # "bmgr":Landroid/app/backup/IBackupManager;
    .restart local v5    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 59
    .local v3, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .local v1, "backupOkay":Z
    goto :goto_0

    .line 64
    .end local v1    # "backupOkay":Z
    .end local v2    # "bmgr":Landroid/app/backup/IBackupManager;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_3
    const-string/jumbo v6, "BackupSettingsActivity"

    const-string/jumbo v7, "Backup component not found!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 66
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 67
    .local v4, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v6, "BackupSettingsActivity"

    const-string/jumbo v7, "Invalid backup component URI!"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
