.class Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$vol:Landroid/os/storage/VolumeInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$1:Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 419
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$1:Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "no_physical_media"

    .line 420
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 418
    invoke-static {v2, v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 422
    .local v0, "admin":Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$1:Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "no_physical_media"

    .line 423
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 421
    invoke-static {v2, v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 424
    .local v1, "hasBaseUserRestriction":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    .line 428
    :cond_0
    new-instance v2, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;

    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->val$vol:Landroid/os/storage/VolumeInfo;

    invoke-direct {v2, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;-><init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/deviceinfo/StorageSettings$MountTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 417
    return-void

    .line 425
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment$1;->this$1:Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;

    invoke-virtual {v2}, Lcom/android/settings_ex/deviceinfo/StorageSettings$VolumeUnmountedFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 426
    return-void
.end method
