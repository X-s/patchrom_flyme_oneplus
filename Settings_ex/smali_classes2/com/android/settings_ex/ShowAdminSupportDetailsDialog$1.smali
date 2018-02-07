.class final Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;
.super Ljava/lang/Object;
.source "ShowAdminSupportDetailsDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ShowAdminSupportDetailsDialog;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$enforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

.field final synthetic val$finishActivity:Z


# direct methods
.method constructor <init>(Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;Landroid/app/Activity;Z)V
    .locals 0
    .param p1, "val$enforcedAdmin"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .param p2, "val$activity"    # Landroid/app/Activity;
    .param p3, "val$finishActivity"    # Z

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$enforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iput-object p2, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$finishActivity:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$enforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v1, v1, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/android/settings_ex/DeviceAdminAdd;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 169
    const-string/jumbo v1, "android.app.extra.DEVICE_ADMIN"

    .line 170
    iget-object v2, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$enforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v2, v2, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    const-string/jumbo v1, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$activity:Landroid/app/Activity;

    .line 174
    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$enforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    iget v3, v3, Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 173
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 182
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$finishActivity:Z

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 165
    :cond_0
    return-void

    .line 176
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/android/settings_ex/Settings$DeviceAdminSettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 177
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    iget-object v1, p0, Lcom/android/settings_ex/ShowAdminSupportDetailsDialog$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
