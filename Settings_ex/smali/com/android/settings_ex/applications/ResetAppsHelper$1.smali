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

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 113
    iget-object v11, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings_ex/applications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/android/settings_ex/applications/ResetAppsHelper;->access$000(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v11

    const/16 v12, 0x200

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_1

    .line 116
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 118
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings_ex/applications/ResetAppsHelper;->mNm:Landroid/app/INotificationManager;
    invoke-static {v11}, Lcom/android/settings_ex/applications/ResetAppsHelper;->access$100(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/app/INotificationManager;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v14, 0x1

    invoke-interface {v11, v12, v13, v14}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :goto_1
    iget-boolean v11, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v11, :cond_0

    .line 122
    iget-object v11, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings_ex/applications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/android/settings_ex/applications/ResetAppsHelper;->access$000(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    .line 124
    iget-object v11, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings_ex/applications/ResetAppsHelper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v11}, Lcom/android/settings_ex/applications/ResetAppsHelper;->access$000(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/PackageManager;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 115
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :try_start_1
    iget-object v11, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings_ex/applications/ResetAppsHelper;->mIPm:Landroid/content/pm/IPackageManager;
    invoke-static {v11}, Lcom/android/settings_ex/applications/ResetAppsHelper;->access$200(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/pm/IPackageManager;

    move-result-object v11

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-interface {v11, v12}, Landroid/content/pm/IPackageManager;->resetApplicationPreferences(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :goto_2
    iget-object v11, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings_ex/applications/ResetAppsHelper;->mAom:Landroid/app/AppOpsManager;
    invoke-static {v11}, Lcom/android/settings_ex/applications/ResetAppsHelper;->access$300(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/app/AppOpsManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AppOpsManager;->resetAllModes()V

    .line 135
    iget-object v11, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings_ex/applications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;
    invoke-static {v11}, Lcom/android/settings_ex/applications/ResetAppsHelper;->access$400(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v9

    .line 137
    .local v9, "restrictedUids":[I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 138
    .local v3, "currentUserId":I
    move-object v2, v9

    .local v2, "arr$":[I
    array-length v8, v2

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_3
    if-ge v5, v8, :cond_3

    aget v10, v2, v5

    .line 140
    .local v10, "uid":I
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    if-ne v11, v3, :cond_2

    .line 141
    iget-object v11, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings_ex/applications/ResetAppsHelper;->mNpm:Landroid/net/NetworkPolicyManager;
    invoke-static {v11}, Lcom/android/settings_ex/applications/ResetAppsHelper;->access$400(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/net/NetworkPolicyManager;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v10, v12}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 138
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 145
    .end local v10    # "uid":I
    :cond_3
    sget-boolean v7, Landroid/os/Build$VERSION;->IS_CTA_BUILD:Z

    .line 146
    .local v7, "isCtaVersion":Z
    if-eqz v7, :cond_4

    .line 147
    new-instance v6, Landroid/content/Intent;

    const-string v11, "com.oneplus.cta.permission.RESET"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v6, "intent":Landroid/content/Intent;
    const-string v11, "com.oneplus.permissionutil"

    const-string v12, "com.oneplus.permissionutil.ResetReceiver"

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v11, p0, Lcom/android/settings_ex/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings_ex/applications/ResetAppsHelper;

    # getter for: Lcom/android/settings_ex/applications/ResetAppsHelper;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/settings_ex/applications/ResetAppsHelper;->access$500(Lcom/android/settings_ex/applications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_4
    return-void

    .line 132
    .end local v2    # "arr$":[I
    .end local v3    # "currentUserId":I
    .end local v5    # "i$":I
    .end local v7    # "isCtaVersion":Z
    .end local v8    # "len$":I
    .end local v9    # "restrictedUids":[I
    :catch_0
    move-exception v11

    goto :goto_2

    .line 119
    .restart local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v11

    goto/16 :goto_1
.end method
