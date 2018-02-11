.class Lcom/android/settings_ex/applications/ResetAppsHelper$1;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/ResetAppsHelper;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ResetAppsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/applications/ResetAppsHelper;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 117
    iget-object v10, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings_ex/applications/ResetAppsHelper;->-get5(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 118
    const/16 v11, 0x200

    .line 117
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 119
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 120
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 122
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v10, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings_ex/applications/ResetAppsHelper;->-get3(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v13, 0x1

    invoke-interface {v10, v11, v12, v13}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :goto_1
    iget-boolean v10, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v10, :cond_0

    .line 126
    iget-object v10, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings_ex/applications/ResetAppsHelper;->-get5(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v10

    .line 127
    const/4 v11, 0x3

    .line 126
    if-ne v10, v11, :cond_0

    .line 128
    iget-object v10, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/settings_ex/applications/ResetAppsHelper;->-wrap0(Lcom/android/settings_ex/applications/ResetAppsHelper;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 119
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    :cond_1
    iget-object v10, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings_ex/applications/ResetAppsHelper;->-get5(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 130
    const/4 v12, 0x0

    .line 131
    const/4 v13, 0x1

    .line 129
    invoke-virtual {v10, v11, v12, v13}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_2

    .line 136
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings_ex/applications/ResetAppsHelper;->-get2(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-interface {v10, v11}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :goto_3
    iget-object v10, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings_ex/applications/ResetAppsHelper;->-get0(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 140
    iget-object v10, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings_ex/applications/ResetAppsHelper;->-get4(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v10

    .line 141
    const/4 v11, 0x1

    .line 140
    invoke-virtual {v10, v11}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v8

    .line 142
    .local v8, "restrictedUids":[I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 143
    .local v2, "currentUserId":I
    const/4 v10, 0x0

    array-length v11, v8

    :goto_4
    if-ge v10, v11, :cond_4

    aget v9, v8, v10

    .line 145
    .local v9, "uid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-ne v12, v2, :cond_3

    .line 146
    iget-object v12, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-static {v12}, Lcom/android/settings_ex/applications/ResetAppsHelper;->-get4(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 143
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 150
    .end local v9    # "uid":I
    :cond_4
    sget-boolean v7, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 151
    .local v7, "isCtaVersion":Z
    if-eqz v7, :cond_5

    .line 152
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v10, "com.oneplus.cta.permission.RESET"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "com.oneplus.permissionutil"

    const-string/jumbo v11, "com.oneplus.permissionutil.ResetReceiver"

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v10, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-static {v10}, Lcom/android/settings_ex/applications/ResetAppsHelper;->-get1(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 116
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_5
    return-void

    .line 137
    .end local v2    # "currentUserId":I
    .end local v7    # "isCtaVersion":Z
    .end local v8    # "restrictedUids":[I
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    goto :goto_3

    .line 123
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v4

    .local v4, "ex":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method
