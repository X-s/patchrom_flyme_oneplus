.class final Lcom/android/settings_exlib/RestrictedLockUtils$1;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_exlib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$admin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0
    .param p1, "val$context"    # Landroid/content/Context;
    .param p2, "val$admin"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/settings_exlib/RestrictedLockUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings_exlib/RestrictedLockUtils$1;->val$admin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/settings_exlib/RestrictedLockUtils$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_exlib/RestrictedLockUtils$1;->val$admin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settings_exlib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 589
    const/4 v0, 0x1

    return v0
.end method
