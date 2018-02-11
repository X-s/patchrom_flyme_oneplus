.class public Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "UninstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninstallAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 129
    invoke-virtual {p1, p2, p2}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/os/UserHandle;

    iget v2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private isMultiAppEnabled(Ljava/lang/String;)Z
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x45

    const/4 v9, 0x0

    .line 133
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "zhuyang--isMultiAppEnabled:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "isEnable":Z
    invoke-static {}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->-get0()Landroid/app/AppOpsManager;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [I

    aput v10, v7, v9

    invoke-virtual {v6, v7}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v5

    .line 136
    .local v5, "packageOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v5, :cond_2

    .line 137
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "packageOp$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    .line 144
    .local v3, "packageOp":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "op$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 145
    .local v1, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 146
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    if-nez v6, :cond_1

    .line 147
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    const/4 v0, 0x1

    .line 149
    goto :goto_0

    .line 155
    .end local v1    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v2    # "op$iterator":Ljava/util/Iterator;
    .end local v3    # "packageOp":Landroid/app/AppOpsManager$PackageOps;
    .end local v4    # "packageOp$iterator":Ljava/util/Iterator;
    :cond_2
    return v0
.end method

.method private isSingleUser(Landroid/os/UserManager;)Z
    .locals 4
    .param p1, "userManager"    # Landroid/os/UserManager;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 180
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    .line 181
    .local v0, "userCount":I
    if-eq v0, v1, :cond_0

    .line 182
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 182
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 160
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->startUninstallProgress()V

    .line 159
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->dispatchAborted()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 70
    .local v6, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-static {v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->-get1(Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;)Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    move-result-object v3

    .line 71
    .local v3, "dialogInfo":Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;
    iget-object v9, v3, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 73
    .local v1, "appLabel":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    .local v2, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .local v5, "messageBuilder":Ljava/lang/StringBuilder;
    iget-object v9, v3, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_0

    .line 79
    iget-object v9, v3, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 80
    .local v0, "activityLabel":Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 82
    new-array v9, v12, [Ljava/lang/Object;

    aput-object v0, v9, v11

    const v10, 0x7f0e03fd

    invoke-virtual {p0, v10, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 81
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .end local v0    # "activityLabel":Ljava/lang/CharSequence;
    :cond_0
    iget-object v9, v3, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_1

    const/4 v4, 0x1

    .line 89
    .local v4, "isUpdate":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    .line 90
    .local v8, "userManager":Landroid/os/UserManager;
    if-eqz v4, :cond_3

    .line 91
    invoke-direct {p0, v8}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->isSingleUser(Landroid/os/UserManager;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 92
    const v9, 0x7f0e0401

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :goto_1
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 120
    iget-object v9, v3, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v6, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getBadgedIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v9, 0x104000a

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 122
    const/high16 v9, 0x1040000

    invoke-virtual {v2, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 124
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    return-object v9

    .line 88
    .end local v4    # "isUpdate":Z
    .end local v8    # "userManager":Landroid/os/UserManager;
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "isUpdate":Z
    goto :goto_0

    .line 94
    .restart local v8    # "userManager":Landroid/os/UserManager;
    :cond_2
    const v9, 0x7f0e0402

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 97
    :cond_3
    iget-boolean v9, v3, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    if-eqz v9, :cond_4

    invoke-direct {p0, v8}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->isSingleUser(Landroid/os/UserManager;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 99
    :cond_4
    iget-object v9, v3, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 100
    iget-object v9, v3, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v7

    .line 102
    .local v7, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v9, v3, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    iget-object v9, v3, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const/16 v10, 0x3e7

    if-ne v9, v10, :cond_6

    .line 104
    new-array v9, v12, [Ljava/lang/Object;

    aput-object v1, v9, v11

    const v10, 0x7f0e03ef

    invoke-virtual {p0, v10, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 103
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-array v9, v12, [Ljava/lang/Object;

    aput-object v1, v9, v11

    const v10, 0x7f0e03ee

    invoke-virtual {p0, v10, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 98
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_5
    const v9, 0x7f0e03ff

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 108
    .restart local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_6
    new-array v9, v12, [Ljava/lang/Object;

    iget-object v10, v7, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v10, v9, v11

    const v10, 0x7f0e0400

    invoke-virtual {p0, v10, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 107
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 111
    .end local v7    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_7
    iget-object v9, v3, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->isMultiAppEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 112
    const v9, 0x7f0e03f0

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 114
    :cond_8
    const v9, 0x7f0e03fe

    invoke-virtual {p0, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 170
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 168
    :cond_0
    return-void
.end method
