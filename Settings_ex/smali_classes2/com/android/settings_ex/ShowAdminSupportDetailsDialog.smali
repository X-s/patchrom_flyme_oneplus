.class public Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;
.super Landroid/app/Activity;
.source "ShowAdminSupportDetailsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdminSupportDialog"


# instance fields
.field private mDialogView:Landroid/view/View;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkIfCallerHasPermission(Ljava/lang/String;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 96
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 98
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v0, v4}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v2

    .line 99
    .local v2, "uid":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, p1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 101
    .end local v2    # "uid":I
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "AdminSupportDialog"

    const-string/jumbo v5, "Could not talk to activity manager."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    return v3
.end method

.method private getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .line 84
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    if-nez p1, :cond_0

    .line 85
    return-object v0

    .line 88
    :cond_0
    const-string/jumbo v1, "android.permission.MANAGE_DEVICE_ADMINS"

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->checkIfCallerHasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const-string/jumbo v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 90
    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 92
    :cond_1
    return-object v0
.end method

.method private initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "admin"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .prologue
    .line 108
    if-eqz p2, :cond_0

    .line 109
    invoke-static {p0, p2}, Lcom/android/settings_exlib/RestrictedLockUtils;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    invoke-static {p0, p3}, Lcom/android/settings_exlib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p2, v5, p3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 122
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 123
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 122
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 124
    .local v1, "badgedIcon":Landroid/graphics/drawable/Drawable;
    const v4, 0x7f110095

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    .end local v1    # "badgedIcon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local p2    # "admin":Landroid/content/ComponentName;
    :cond_0
    :goto_1
    new-instance v4, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v4, p2, p3}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    const/4 v5, 0x1

    invoke-static {p0, p1, v4, v5}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;Z)V

    .line 107
    return-void

    .line 111
    .restart local p2    # "admin":Landroid/content/ComponentName;
    :cond_1
    const/4 p2, 0x0

    .line 110
    .local p2, "admin":Landroid/content/ComponentName;
    goto :goto_1

    .line 117
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .local p2, "admin":Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "AdminSupportDialog"

    const-string/jumbo v5, "Missing reciever info"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "enforcedAdmin"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .param p3, "finishActivity"    # Z

    .prologue
    const/4 v4, 0x0

    .line 135
    if-nez p2, :cond_0

    .line 136
    return-void

    .line 139
    :cond_0
    iget-object v3, p2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    .line 141
    const-string/jumbo v3, "device_policy"

    .line 140
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 143
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget-object v3, p2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 142
    invoke-static {p0, v3}, Lcom/android/settings_exlib/RestrictedLockUtils;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 144
    iget v3, p2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 143
    invoke-static {p0, v3}, Lcom/android/settings_exlib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    iget v3, p2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v4, -0x2710

    if-ne v3, v4, :cond_1

    .line 148
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    iput v3, p2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 150
    :cond_1
    const/4 v1, 0x0

    .line 151
    .local v1, "supportMessage":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {v3, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    iget-object v3, p2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget v4, p2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 152
    invoke-virtual {v0, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 155
    .end local v1    # "supportMessage":Ljava/lang/CharSequence;
    :cond_2
    if-eqz v1, :cond_3

    .line 156
    const v3, 0x7f110093

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 157
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_3
    :goto_0
    const v3, 0x7f110094

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 163
    new-instance v4, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;

    invoke-direct {v4, p2, p0, p3}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;-><init>(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;Landroid/app/Activity;Z)V

    .line 162
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    return-void

    .line 145
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_4
    iput-object v4, p2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 62
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 64
    const v2, 0x7f04001f

    .line 63
    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mDialogView:Landroid/view/View;

    .line 65
    iget-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mDialogView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v2, v2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget v3, v3, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;I)V

    .line 66
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 67
    const v2, 0x7f0e05c1

    .line 66
    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mDialogView:Landroid/view/View;

    .line 66
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 56
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->finish()V

    .line 190
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 76
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v1, v0}, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    iput-object v0, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 78
    iget-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mDialogView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v2, v2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget v3, v3, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;I)V

    .line 73
    :cond_0
    return-void
.end method
