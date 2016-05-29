.class public Lcom/android/settings_ex/DeviceAdminAdd;
.super Landroid/app/Activity;
.source "DeviceAdminAdd.java"


# static fields
.field static final DIALOG_WARNING:I = 0x1

.field private static final MAX_ADD_MSG_LINES:I = 0xf

.field private static final MAX_ADD_MSG_LINES_LANDSCAPE:I = 0x2

.field private static final MAX_ADD_MSG_LINES_PORTRAIT:I = 0x5

.field static final TAG:Ljava/lang/String; = "DeviceAdminAdd"


# instance fields
.field mActionButton:Landroid/widget/Button;

.field final mActivePolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAddMsg:Landroid/widget/TextView;

.field mAddMsgEllipsized:Z

.field mAddMsgExpander:Landroid/widget/ImageView;

.field mAddMsgText:Ljava/lang/CharSequence;

.field mAdding:Z

.field final mAddingPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mAddingProfileOwner:Z

.field mAdminDescription:Landroid/widget/TextView;

.field mAdminIcon:Landroid/widget/ImageView;

.field mAdminName:Landroid/widget/TextView;

.field mAdminPolicies:Landroid/view/ViewGroup;

.field mAdminWarning:Landroid/widget/TextView;

.field mAppOps:Landroid/app/AppOpsManager;

.field mCancelButton:Landroid/widget/Button;

.field mCurSysAppOpMode:I

.field mCurToastAppOpMode:I

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

.field mHandler:Landroid/os/Handler;

.field mProfileOwnerName:Ljava/lang/String;

.field mProfileOwnerWarning:Landroid/widget/TextView;

.field mRefreshing:Z

.field mWaitingForRemoveMsg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    return-void
.end method

.method static setViewVisibility(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "visibility"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p0, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 412
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 413
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_0
    return-void
.end method


# virtual methods
.method addAndFinish()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 306
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mRefreshing:Z

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 307
    const v2, 0x16059

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 309
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DeviceAdminAdd;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v2, :cond_1

    .line 321
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setProfileOwner(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 328
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "DeviceAdminAdd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception trying to activate admin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v4}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->setResult(I)V

    goto :goto_0

    .line 323
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 324
    .local v1, "re":Ljava/lang/RuntimeException;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/DeviceAdminAdd;->setResult(I)V

    goto :goto_1
.end method

.method continueRemoveAction(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 331
    iget-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    if-nez v1, :cond_0

    .line 353
    :goto_0
    return-void

    .line 334
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mWaitingForRemoveMsg:Z

    .line 335
    if-nez p1, :cond_1

    .line 337
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    :goto_1
    iget-object v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    goto :goto_0

    .line 345
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 351
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/DeviceAdminAdd;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 346
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    goto :goto_2

    .line 338
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method getEllipsizedLines()I
    .locals 3

    .prologue
    .line 495
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 498
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v1, 0x5

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    new-instance v19, Landroid/os/Handler;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getMainLooper()Landroid/os/Looper;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mHandler:Landroid/os/Handler;

    .line 107
    const-string v19, "device_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 108
    const-string v19, "appops"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/AppOpsManager;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 111
    .local v15, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getFlags()I

    move-result v19

    const/high16 v20, 0x10000000

    and-int v19, v19, v20

    if-eqz v19, :cond_0

    .line 112
    const-string v19, "DeviceAdminAdd"

    const-string v20, "Cannot start ADD_DEVICE_ADMIN as a new task"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    .line 302
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "action":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/content/ComponentName;

    .line 120
    .local v18, "who":Landroid/content/ComponentName;
    if-nez v18, :cond_1

    .line 121
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "No component specified in "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    goto :goto_0

    .line 126
    :cond_1
    if-eqz v3, :cond_4

    const-string v19, "android.app.action.SET_PROFILE_OWNER"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 127
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->setResult(I)V

    .line 128
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->setFinishOnTouchOutside(Z)V

    .line 129
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "android.app.extra.PROFILE_OWNER_NAME"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mProfileOwnerName:Ljava/lang/String;

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "callingPackage":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 134
    :cond_2
    const-string v19, "DeviceAdminAdd"

    const-string v20, "Unknown or incorrect caller"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 139
    :cond_3
    const/16 v19, 0x0

    :try_start_0
    move/from16 v0, v19

    invoke-virtual {v15, v6, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    .line 140
    .local v14, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_4

    .line 141
    const-string v19, "DeviceAdminAdd"

    const-string v20, "Cannot set a non-system app as a profile owner"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 145
    .end local v14    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v13

    .line 146
    .local v13, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot find the package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 154
    .end local v6    # "callingPackage":Ljava/lang/String;
    .end local v13    # "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const/16 v19, 0x80

    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 164
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v19

    if-nez v19, :cond_8

    .line 165
    new-instance v19, Landroid/content/Intent;

    const-string v20, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v20, 0x8000

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 168
    .local v5, "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v5, :cond_6

    const/4 v7, 0x0

    .line 169
    .local v7, "count":I
    :goto_1
    const/4 v10, 0x0

    .line 170
    .local v10, "found":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v7, :cond_5

    .line 171
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 172
    .local v17, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 177
    :try_start_2
    move-object/from16 v0, v17

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 178
    new-instance v8, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 179
    .local v8, "dpi":Landroid/app/admin/DeviceAdminInfo;
    const/4 v10, 0x1

    .line 188
    .end local v8    # "dpi":Landroid/app/admin/DeviceAdminInfo;
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_5
    :goto_3
    if-nez v10, :cond_8

    .line 189
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Request to add invalid device admin: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 155
    .end local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "count":I
    .end local v10    # "found":Z
    .end local v11    # "i":I
    :catch_1
    move-exception v9

    .line 156
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to retrieve device policy "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 168
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    goto/16 :goto_1

    .line 180
    .restart local v7    # "count":I
    .restart local v10    # "found":Z
    .restart local v11    # "i":I
    .restart local v17    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v9

    .line 181
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bad "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 182
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v9

    .line 183
    .local v9, "e":Ljava/io/IOException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Bad "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 170
    .end local v9    # "e":Ljava/io/IOException;
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 195
    .end local v5    # "avail":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "count":I
    .end local v10    # "found":Z
    .end local v11    # "i":I
    .end local v17    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8
    new-instance v17, Landroid/content/pm/ResolveInfo;

    invoke-direct/range {v17 .. v17}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 196
    .restart local v17    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iput-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 198
    :try_start_3
    new-instance v19, Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 212
    const-string v19, "android.app.action.ADD_DEVICE_ADMIN"

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 213
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mRefreshing:Z

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v12

    .line 216
    .local v12, "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_9

    .line 217
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 218
    .local v16, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v19

    if-nez v19, :cond_a

    .line 219
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mRefreshing:Z

    .line 223
    .end local v16    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mRefreshing:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 225
    const/16 v19, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->setResult(I)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 199
    .end local v11    # "i":I
    .end local v12    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    :catch_4
    move-exception v9

    .line 200
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to retrieve device policy "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 203
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_5
    move-exception v9

    .line 204
    .local v9, "e":Ljava/io/IOException;
    const-string v19, "DeviceAdminAdd"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Unable to retrieve device policy "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->finish()V

    goto/16 :goto_0

    .line 216
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v11    # "i":I
    .restart local v12    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .restart local v16    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 234
    .end local v11    # "i":I
    .end local v12    # "newPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .end local v16    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    move/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/app/admin/DevicePolicyManager;->hasUserSetupCompleted()Z

    move-result v19

    if-nez v19, :cond_c

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->addAndFinish()V

    goto/16 :goto_0

    .line 239
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getIntent()Landroid/content/Intent;

    move-result-object v19

    const-string v20, "android.app.extra.ADD_EXPLANATION"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    .line 241
    const v19, 0x7f04003d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->setContentView(I)V

    .line 243
    const v19, 0x7f0f0096

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    .line 244
    const v19, 0x7f0f0097

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    .line 245
    const v19, 0x7f0f0099

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    .line 246
    const v19, 0x7f0f0098

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    .line 248
    const v19, 0x7f0f009b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    .line 249
    const v19, 0x7f0f009a

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings_ex/DeviceAdminAdd$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd$1;-><init>(Lcom/android/settings_ex/DeviceAdminAdd;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->toggleMessageEllipsis(Landroid/view/View;)V

    .line 259
    const v19, 0x7f0f009c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    .line 260
    const v19, 0x7f0f009d

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    .line 261
    const v19, 0x7f0f004c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mCancelButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings_ex/DeviceAdminAdd$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd$2;-><init>(Lcom/android/settings_ex/DeviceAdminAdd;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const v19, 0x7f0f00a0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/Button;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings_ex/DeviceAdminAdd$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/DeviceAdminAdd$3;-><init>(Lcom/android/settings_ex/DeviceAdminAdd;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 384
    packed-switch p1, :pswitch_data_0

    .line 405
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 386
    :pswitch_0
    const-string v2, "android.app.extra.DISABLE_WARNING"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 387
    .local v1, "msg":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 390
    const v2, 0x7f090629

    new-instance v3, Lcom/android/settings_ex/DeviceAdminAdd$4;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/DeviceAdminAdd$4;-><init>(Lcom/android/settings_ex/DeviceAdminAdd;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 401
    const v2, 0x7f09062a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 402
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 372
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 373
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 374
    .local v0, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x18

    iget v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mCurSysAppOpMode:I

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 375
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2d

    iget v4, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mCurToastAppOpMode:I

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 377
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 378
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x18

    const/4 v3, 0x1

    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->updateInterface()V

    .line 360
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 361
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 362
    .local v0, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4, v1, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mCurSysAppOpMode:I

    .line 363
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5, v1, v0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mCurToastAppOpMode:I

    .line 364
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v4, v1, v0, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 365
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v5, v1, v0, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 366
    return-void
.end method

.method toggleMessageEllipsis(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 483
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 485
    .local v0, "tv":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    .line 486
    iget-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_1

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 487
    iget-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getEllipsizedLines()I

    move-result v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 489
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgEllipsized:Z

    if-eqz v1, :cond_3

    const v1, 0x10802e9

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 492
    return-void

    .line 485
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 486
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 487
    :cond_2
    const/16 v1, 0xf

    goto :goto_2

    .line 489
    :cond_3
    const v1, 0x10802e8

    goto :goto_3
.end method

.method updateInterface()V
    .locals 12

    .prologue
    const/16 v8, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 418
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v5, :cond_0

    .line 428
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mProfileOwnerWarning:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    .line 431
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    :goto_1
    iget-boolean v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mRefreshing:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object v6, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v6}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 439
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 440
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    .line 441
    .local v3, "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 442
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 443
    .local v2, "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, ""

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    .line 445
    .local v4, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 424
    .end local v1    # "i":I
    .end local v2    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    .end local v3    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .end local v4    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminDescription:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 434
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsg:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddMsgExpander:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 449
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings_ex/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 450
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/android/settings_ex/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 451
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f09088e

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    const v5, 0x7f090882

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f090883

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iput-boolean v10, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdding:Z

    .line 479
    :goto_3
    return-void

    .line 457
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 458
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v5}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v3

    .line 459
    .restart local v3    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 460
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    .line 461
    .restart local v2    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    iget v5, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iget v6, v2, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p0, v5, v6, v11}, Landroid/widget/AppSecurityPermissions;->getPermissionItemView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/view/View;

    move-result-object v4

    .line 463
    .restart local v4    # "view":Landroid/view/View;
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminPolicies:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 467
    .end local v1    # "i":I
    .end local v2    # "pi":Landroid/app/admin/DeviceAdminInfo$PolicyInfo;
    .end local v3    # "policies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/admin/DeviceAdminInfo$PolicyInfo;>;"
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingPolicies:Ljava/util/ArrayList;

    invoke-static {v5, v10}, Lcom/android/settings_ex/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 468
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActivePolicies:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/android/settings_ex/DeviceAdminAdd;->setViewVisibility(Ljava/util/ArrayList;I)V

    .line 469
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdminWarning:Landroid/widget/TextView;

    const v6, 0x7f09088d

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lcom/android/settings_ex/DeviceAdminAdd;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/android/settings_ex/DeviceAdminAdd;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-boolean v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAddingProfileOwner:Z

    if-eqz v5, :cond_5

    .line 472
    const v5, 0x7f09088f

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    .line 476
    :goto_5
    iget-object v5, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mActionButton:Landroid/widget/Button;

    const v6, 0x7f09088b

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iput-boolean v11, p0, Lcom/android/settings_ex/DeviceAdminAdd;->mAdding:Z

    goto :goto_3

    .line 474
    :cond_5
    const v5, 0x7f09088a

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/DeviceAdminAdd;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method
