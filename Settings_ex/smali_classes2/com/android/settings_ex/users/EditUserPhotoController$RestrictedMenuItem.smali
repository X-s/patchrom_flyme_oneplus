.class final Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/users/EditUserPhotoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestrictedMenuItem"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/Runnable;

.field private final mAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

.field private final mContext:Landroid/content/Context;

.field private final mIsRestrictedByBase:Z

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "restriction"    # Ljava/lang/String;
    .param p4, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    .line 388
    iput-object p2, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mTitle:Ljava/lang/String;

    .line 389
    iput-object p4, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mAction:Ljava/lang/Runnable;

    .line 391
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 392
    .local v0, "myUserId":I
    invoke-static {p1, p3, v0}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 394
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    invoke-static {v1, p3, v0}, Lcom/android/settings_exlib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mIsRestrictedByBase:Z

    .line 386
    return-void
.end method


# virtual methods
.method final doAction()V
    .locals 2

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 410
    return-void

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 403
    return-void
.end method

.method final isRestrictedByAdmin()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isRestrictedByBase()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mIsRestrictedByBase:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
