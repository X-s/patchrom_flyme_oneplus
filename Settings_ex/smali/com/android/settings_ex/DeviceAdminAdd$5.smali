.class Lcom/android/settings_ex/DeviceAdminAdd$5;
.super Ljava/lang/Object;
.source "DeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceAdminAdd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/DeviceAdminAdd;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 353
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-boolean v2, v2, Lcom/android/settings_ex/DeviceAdminAdd;->mAdding:Z

    if-eqz v2, :cond_1

    .line 354
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/settings_ex/DeviceAdminAdd;->addAndFinish()V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {v2, v3}, Lcom/android/settings_ex/DeviceAdminAdd;->-wrap0(Lcom/android/settings_ex/DeviceAdminAdd;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 355
    if-eqz v2, :cond_2

    .line 357
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 358
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    .line 359
    new-instance v3, Lcom/android/settings_ex/DeviceAdminAdd$5$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings_ex/DeviceAdminAdd$5$1;-><init>(Lcom/android/settings_ex/DeviceAdminAdd$5;I)V

    .line 358
    invoke-static {v2, v1, v3}, Lcom/android/settings_ex/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 368
    .end local v1    # "userId":I
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-boolean v2, v2, Lcom/android/settings_ex/DeviceAdminAdd;->mUninstalling:Z

    if-eqz v2, :cond_3

    .line 369
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 370
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    goto :goto_0

    .line 371
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-boolean v2, v2, Lcom/android/settings_ex/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v2, :cond_0

    .line 375
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/settings_ex/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    .line 379
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v2, v2, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v3, v3, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 380
    new-instance v4, Landroid/os/RemoteCallback;

    new-instance v5, Lcom/android/settings_ex/DeviceAdminAdd$5$2;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/DeviceAdminAdd$5$2;-><init>(Lcom/android/settings_ex/DeviceAdminAdd$5;)V

    .line 389
    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    iget-object v6, v6, Lcom/android/settings_ex/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 380
    invoke-direct {v4, v5, v6}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    .line 379
    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 391
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd$5;->this$0:Lcom/android/settings_ex/DeviceAdminAdd;

    invoke-virtual {v2}, Lcom/android/settings_ex/DeviceAdminAdd;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/DeviceAdminAdd$5$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DeviceAdminAdd$5$3;-><init>(Lcom/android/settings_ex/DeviceAdminAdd$5;)V

    .line 395
    const-wide/16 v4, 0x7d0

    .line 391
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 376
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
