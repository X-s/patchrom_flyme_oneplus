.class public Lcom/android/settings_ex/applications/PermissionsSummaryHelper;
.super Ljava/lang/Object;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .prologue
    .line 33
    invoke-static {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter;->getInstance(Landroid/content/Context;)Landroid/content/pm/permission/RuntimePermissionPresenter;

    move-result-object v0

    .line 34
    .local v0, "presenter":Landroid/content/pm/permission/RuntimePermissionPresenter;
    new-instance v1, Lcom/android/settings_ex/applications/PermissionsSummaryHelper$1;

    invoke-direct {v1, p2}, Lcom/android/settings_ex/applications/PermissionsSummaryHelper$1;-><init>(Lcom/android/settings_ex/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    .line 65
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/permission/RuntimePermissionPresenter;->getAppPermissions(Ljava/lang/String;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Landroid/os/Handler;)V

    .line 31
    return-void
.end method
