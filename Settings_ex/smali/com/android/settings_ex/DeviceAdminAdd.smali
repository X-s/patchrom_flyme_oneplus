.class public Lcom/android/settings_ex/DeviceAdminAdd;
.super Lcom/oneplus/settings/BaseActivity;
.source "DeviceAdminAdd.java"


# static fields
.field static final DIALOG_WARNING:I = 0x1

.field public static final EXTRA_CALLED_FROM_SUPPORT_DIALOG:Ljava/lang/String; = "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

.field public static final EXTRA_DEVICE_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

.field private static final MAX_ADD_MSG_LINES:I = 0xf

.field private static final MAX_ADD_MSG_LINES_LANDSCAPE:I = 0x2

.field private static final MAX_ADD_MSG_LINES_PORTRAIT:I = 0x5

.field static final TAG:Ljava/lang/String; = "DeviceAdminAdd"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field mAddingProfileOwner:Z

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminPoliciesInitialized:Z

.field mAdminWarning:Landroid/widget/TextView;

.field mAppOps:Landroid/app/AppOpsManager;

.field mCancelButton:Landroid/widget/Button;

.field mCurSysAppOpMode:I

.field mCurToastAppOpMode:I

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

.field mHandler:Landroid/os/Handler;

.field mIsCalledFromSupportDialog:Z

.field mProfileOwnerName:Ljava/lang/String;

.field mProfileOwnerWarning:Landroid/widget/TextView;

.field mRefreshing:Z

.field mSupportMessage:Landroid/widget/TextView;

.field mUninstallButton:Landroid/widget/Button;

.field mUninstalling:Z

.field mWaitingForRemoveMsg:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/DeviceAdminAdd;Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 1
    .param p1, "adminInfo"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DeviceAdminAdd;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mUninstalling:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    .line 74
    return-void
.end method

.method private addDeviceAdminPolicies(Z)V
    .locals 11
    .param p1, "showDescription"    # Z

    .prologue
    const/4 v10, 0x1

    .line 604
    iget-boolean v8, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    if-nez v8, :cond_4

    .line 605
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    .line 606
    .local v2, "isAdminUser":Z
    iget-object v8, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "pi$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 607
    .local v5, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    if-eqz v2, :cond_0

    iget v0, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    .line 608
    .local v0, "descriptionId":I
    :goto_1
    if-eqz v2, :cond_1

    iget v3, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    .line 609
    .local v3, "labelId":I
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 610
    if-eqz p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 609
    :goto_3
    invoke-static {p0, v9, v8, v10}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v7

    .line 612
    .local v7, "view":Landroid/view/View;
    const v8, 0x1020340

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 613
    .local v4, "permIcon":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 614
    .local v1, "imageDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b00f8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 616
    iget-object v8, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 607
    .end local v0    # "descriptionId":I
    .end local v1    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "labelId":I
    .end local v4    # "permIcon":Landroid/widget/ImageView;
    .end local v7    # "view":Landroid/view/View;
    :cond_0
    iget v0, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->descriptionForSecondaryUsers:I

    .restart local v0    # "descriptionId":I
    goto :goto_1

    .line 608
    :cond_1
    iget v3, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->labelForSecondaryUsers:I

    goto :goto_2

    .line 610
    .restart local v3    # "labelId":I
    :cond_2
    const-string/jumbo v8, ""

    goto :goto_3

    .line 618
    .end local v0    # "descriptionId":I
    .end local v3    # "labelId":I
    .end local v5    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_3
    iput-boolean v10, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminPoliciesInitialized:Z

    .line 603
    .end local v2    # "isAdminUser":Z
    .end local v6    # "pi$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private isAdminUninstallable()Z
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z
    .locals 3
    .param p1, "adminInfo"    # Landroid/app/admin/DeviceAdminInfo;

    .prologue
    .line 646
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 648
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 647
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 649
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method addAndFinish()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 403
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 405
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 404
    const v3, 0x16059

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 406
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DeviceAdminAdd;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v2, :cond_1

    .line 418
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 419
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 418
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 424
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 401
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception trying to activate admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 411
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 410
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->setResult(I)V

    goto :goto_0

    .line 420
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 421
    .local v1, "re":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DeviceAdminAdd;->setResult(I)V

    goto :goto_1
.end method

.method continueRemoveAction(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 428
    iget-boolean v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v2, :cond_0

    .line 429
    return-void

    .line 431
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    .line 432
    if-nez p1, :cond_1

    .line 434
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 437
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 427
    :goto_1
    return-void

    .line 442
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 445
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "android.app.extra.DISABLE_WARNING"

    .line 446
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 448
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings_ex/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 443
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 435
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method getEllipsizedLines()I
    .locals 3

    .prologue
    .line 635
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 638
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 639
    const/4 v1, 0x5

    .line 638
    :goto_0
    return v1

    .line 639
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super/range {p0 .. p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance v25, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 132
    const-string/jumbo v25, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 133
    const-string/jumbo v25, "appops"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/AppOpsManager;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 136
    .local v20, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getFlags()I

    move-result v25

    const/high16 v26, 0x10000000

    and-int v25, v25, v26

    if-eqz v25, :cond_0

    .line 137
    const-string/jumbo v25, "DeviceAdminAdd"

    const-string/jumbo v26, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 139
    return-void

    .line 142
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v25

    .line 143
    const-string/jumbo v26, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    const/16 v27, 0x0

    .line 142
    invoke-virtual/range {v25 .. v27}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v25

    .line 147
    const-string/jumbo v26, "android.app.extra.DEVICE_ADMIN"

    .line 146
    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v24

    check-cast v24, Landroid/content/ComponentName;

    .line 148
    .local v24, "who":Landroid/content/ComponentName;
    if-nez v24, :cond_3

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string/jumbo v26, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 150
    .local v21, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/admin/DevicePolicyManager;->getActiveAdmins()Ljava/util/List;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "component$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 151
    .local v7, "component":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 152
    move-object/from16 v24, v7

    .line 153
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mUninstalling:Z

    .line 157
    .end local v7    # "component":Landroid/content/ComponentName;
    :cond_2
    if-nez v24, :cond_3

    .line 158
    const-string/jumbo v25, "DeviceAdminAdd"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "No component specified in "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 160
    return-void

    .line 164
    .end local v8    # "component$iterator":Ljava/util/Iterator;
    .end local v21    # "packageName":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_5

    const-string/jumbo v25, "android.app.action.SET_PROFILE_OWNER"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 165
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->setResult(I)V

    .line 166
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->setFinishOnTouchOutside(Z)V

    .line 167
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string/jumbo v26, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 168
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "callingPackage":Ljava/lang/String;
    if-eqz v6, :cond_4

    invoke-virtual/range {v24 .. v24}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 177
    const/16 v25, 0x0

    :try_start_0
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v19

    .line 178
    .local v19, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    if-nez v25, :cond_5

    .line 179
    const-string/jumbo v25, "DeviceAdminAdd"

    const-string/jumbo v26, "Cannot set a non-system app as a profile owner"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    return-void

    .line 172
    .end local v19    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_4
    const-string/jumbo v25, "DeviceAdminAdd"

    const-string/jumbo v26, "Unknown or incorrect caller"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 174
    return-void

    .line 183
    :catch_0
    move-exception v17

    .line 184
    .local v17, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v25, "DeviceAdminAdd"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Cannot find the package "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 186
    return-void

    .line 192
    .end local v6    # "callingPackage":Ljava/lang/String;
    .end local v17    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const/16 v25, 0x80

    :try_start_1
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 202
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 204
    new-instance v25, Landroid/content/Intent;

    const-string/jumbo v26, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v25 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    const v26, 0x8000

    .line 203
    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 206
    .local v5, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v5, :cond_7

    const/4 v9, 0x0

    .line 207
    .local v9, "count":I
    :goto_0
    const/4 v14, 0x0

    .line 208
    .local v14, "found":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v9, :cond_6

    .line 209
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 210
    .local v23, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 211
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 210
    if-eqz v25, :cond_8

    .line 215
    :try_start_2
    move-object/from16 v0, v23

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 216
    new-instance v10, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v10, v0, v1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 217
    .local v10, "dpi":Landroid/app/admin/DeviceAdminInfo;
    const/4 v14, 0x1

    .line 226
    .end local v10    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .end local v23    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    :goto_2
    if-nez v14, :cond_9

    .line 227
    const-string/jumbo v25, "DeviceAdminAdd"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Request to add invalid device admin: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 229
    return-void

    .line 193
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "count":I
    .end local v14    # "found":Z
    .end local v15    # "i":I
    :catch_1
    move-exception v11

    .line 194
    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v25, "DeviceAdminAdd"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unable to retrieve device policy "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 196
    return-void

    .line 206
    .end local v11    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    .restart local v9    # "count":I
    goto/16 :goto_0

    .line 220
    .restart local v14    # "found":Z
    .restart local v15    # "i":I
    .restart local v23    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v12

    .line 221
    .local v12, "e":Ljava/io/IOException;
    const-string/jumbo v25, "DeviceAdminAdd"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Bad "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 218
    .end local v12    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v13

    .line 219
    .local v13, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v25, "DeviceAdminAdd"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Bad "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 208
    .end local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 233
    .end local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9    # "count":I
    .end local v14    # "found":Z
    .end local v15    # "i":I
    .end local v23    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_9
    new-instance v23, Landroid/content/pm/ResolveInfo;

    invoke-direct/range {v23 .. v23}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 234
    .restart local v23    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v23

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 236
    :try_start_3
    new-instance v25, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 250
    const-string/jumbo v25, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 251
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mRefreshing:Z

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v26

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 254
    const-string/jumbo v25, "DeviceAdminAdd"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Requested admin is already being removed: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 256
    return-void

    .line 241
    :catch_4
    move-exception v12

    .line 242
    .restart local v12    # "e":Ljava/io/IOException;
    const-string/jumbo v25, "DeviceAdminAdd"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unable to retrieve device policy "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 244
    return-void

    .line 237
    .end local v12    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v13

    .line 238
    .restart local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v25, "DeviceAdminAdd"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Unable to retrieve device policy "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 240
    return-void

    .line 259
    .end local v13    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v16

    .line 260
    .local v16, "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v15, v0, :cond_b

    .line 261
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 262
    .local v22, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v25

    if-nez v25, :cond_c

    .line 263
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mRefreshing:Z

    .line 267
    .end local v22    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mRefreshing:Z

    move/from16 v25, v0

    if-nez v25, :cond_d

    .line 269
    const/16 v25, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->setResult(I)V

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 271
    return-void

    .line 260
    .restart local v22    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 278
    .end local v15    # "i":I
    .end local v16    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .end local v22    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    move/from16 v25, v0

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v25

    if-eqz v25, :cond_f

    .line 283
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v25

    const-string/jumbo v26, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    .line 285
    const v25, 0x7f04006b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->setContentView(I)V

    .line 287
    const v25, 0x7f11013b

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    .line 288
    const v25, 0x7f11013c

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    .line 289
    const v25, 0x7f11013e

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 290
    const v25, 0x7f11013d

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    .line 292
    const v25, 0x7f110140

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    .line 293
    const v25, 0x7f11013f

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    .line 294
    new-instance v18, Lcom/android/settings_ex/DeviceAdminAdd$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd$1;-><init>(Lcom/android/settings_ex/DeviceAdminAdd;)V

    .line 300
    .local v18, "onClickListener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v25

    .line 306
    new-instance v26, Lcom/android/settings_ex/DeviceAdminAdd$2;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd$2;-><init>(Lcom/android/settings_ex/DeviceAdminAdd;)V

    .line 305
    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 324
    const v25, 0x7f110141

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    .line 325
    const v25, 0x7f110142

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    .line 326
    const v25, 0x7f110143

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    .line 328
    const v25, 0x7f1100d9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/settings_ex/DeviceAdminAdd$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd$3;-><init>(Lcom/android/settings_ex/DeviceAdminAdd;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    const v25, 0x7f110144

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/settings_ex/DeviceAdminAdd$4;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd$4;-><init>(Lcom/android/settings_ex/DeviceAdminAdd;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    const v25, 0x7f110004

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setFilterTouchesWhenObscured(Z)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/settings_ex/DeviceAdminAdd$5;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd$5;-><init>(Lcom/android/settings_ex/DeviceAdminAdd;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void

    .line 279
    .end local v18    # "onClickListener":Landroid/view/View$OnClickListener;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->addAndFinish()V

    .line 280
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 498
    packed-switch p1, :pswitch_data_0

    .line 518
    invoke-super {p0, p1, p2}, Lcom/oneplus/settings/BaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    return-object v2

    .line 500
    :pswitch_0
    const-string/jumbo v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 501
    .local v1, "msg":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 502
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 504
    new-instance v2, Lcom/android/settings_ex/DeviceAdminAdd$6;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/DeviceAdminAdd$6;-><init>(Lcom/android/settings_ex/DeviceAdminAdd;)V

    .line 503
    const v3, 0x7f0e0a06

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    const v2, 0x7f0e0a07

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 515
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 472
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    .line 474
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 475
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 476
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mCurSysAppOpMode:I

    const/16 v5, 0x18

    invoke-virtual {v3, v5, v2, v1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 477
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mCurToastAppOpMode:I

    const/16 v5, 0x2d

    invoke-virtual {v3, v5, v2, v1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 479
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    :goto_0
    return-void

    .line 480
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 454
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    .line 455
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->updateInterface()V

    .line 457
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 458
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 461
    .local v1, "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x18

    invoke-virtual {v3, v4, v2, v1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mCurSysAppOpMode:I

    .line 462
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4, v2, v1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mCurToastAppOpMode:I

    .line 463
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x18

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 464
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x2d

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v1, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 486
    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onUserLeaveHint()V

    .line 491
    iget-boolean v0, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mIsCalledFromSupportDialog:Z

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 485
    :cond_0
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    move-object v0, p1

    .line 623
    check-cast v0, Landroid/widget/TextView;

    .line 625
    .local v0, "tv":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 626
    iget-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 627
    iget-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 629
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_3

    .line 630
    const v1, 0x10802b4

    .line 629
    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 622
    return-void

    .line 625
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 626
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 627
    :cond_2
    const/16 v1, 0xf

    goto :goto_2

    .line 631
    :cond_3
    const v1, 0x10802b3

    goto :goto_3
.end method

.method updateInterface()V
    .locals 12

    .prologue
    const v11, 0x7f0e0c01

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 524
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    :try_start_0
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 528
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 527
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :goto_0
    iget-boolean v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v4, :cond_0

    .line 534
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 536
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 537
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    :goto_1
    iget-boolean v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mRefreshing:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v4, :cond_4

    .line 586
    :cond_1
    invoke-direct {p0, v10}, Lcom/android/settings_ex/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    .line 587
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    new-array v5, v10, [Ljava/lang/Object;

    .line 588
    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v8

    .line 587
    const v6, 0x7f0e0c0c

    invoke-virtual {p0, v6, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-boolean v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v4, :cond_b

    .line 590
    const v4, 0x7f0e0c0e

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 594
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v5, 0x7f0e0c0a

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 595
    invoke-direct {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->isAdminUninstallable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 596
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 598
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 599
    iput-boolean v10, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdding:Z

    .line 523
    :goto_3
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 540
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 544
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v4

    .line 543
    if-eqz v4, :cond_1

    .line 545
    iput-boolean v8, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdding:Z

    .line 547
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 548
    .local v2, "isProfileOwner":Z
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/DeviceAdminAdd;->isManagedProfile(Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v1

    .line 549
    .local v1, "isManagedProfile":Z
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 551
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v5, 0x7f0e0fbf

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 552
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v5, 0x7f0e0c40

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 577
    :goto_4
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 578
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 577
    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 579
    .local v3, "supportMessage":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 580
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 553
    .end local v3    # "supportMessage":Ljava/lang/CharSequence;
    :cond_5
    if-nez v2, :cond_6

    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 554
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v5

    .line 553
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 556
    :cond_6
    if-eqz v2, :cond_7

    .line 558
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v5, 0x7f0e0fc0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 563
    :goto_5
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setText(I)V

    .line 564
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    .line 561
    :cond_7
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v5, 0x7f0e0fc1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 566
    :cond_8
    invoke-direct {p0, v8}, Lcom/android/settings_ex/DeviceAdminAdd;->addDeviceAdminPolicies(Z)V

    .line 567
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    new-array v5, v10, [Ljava/lang/Object;

    .line 568
    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 569
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 568
    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v8

    .line 567
    const v6, 0x7f0e0c0d

    invoke-virtual {p0, v6, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    const v4, 0x7f0e0c00

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DeviceAdminAdd;->setTitle(I)V

    .line 571
    iget-boolean v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mUninstalling:Z

    if-eqz v4, :cond_9

    .line 572
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v5, 0x7f0e0c03

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_4

    .line 574
    :cond_9
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v4, v11}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_4

    .line 583
    .restart local v3    # "supportMessage":Ljava/lang/CharSequence;
    :cond_a
    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mSupportMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 592
    .end local v1    # "isManagedProfile":Z
    .end local v2    # "isProfileOwner":Z
    .end local v3    # "supportMessage":Ljava/lang/CharSequence;
    :cond_b
    const v4, 0x7f0e0c09

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
