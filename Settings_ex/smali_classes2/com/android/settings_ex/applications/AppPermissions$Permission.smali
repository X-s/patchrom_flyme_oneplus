.class final Lcom/android/settings_ex/applications/AppPermissions$Permission;
.super Ljava/lang/Object;
.source "AppPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Permission"
.end annotation


# instance fields
.field private granted:Z

.field private final runtime:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/applications/AppPermissions$Permission;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/AppPermissions$Permission;->granted:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/applications/AppPermissions$Permission;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/AppPermissions$Permission;->runtime:Z

    return v0
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "runtime"    # Z
    .param p2, "granted"    # Z

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/AppPermissions$Permission;->runtime:Z

    .line 166
    iput-boolean p2, p0, Lcom/android/settings_ex/applications/AppPermissions$Permission;->granted:Z

    .line 164
    return-void
.end method
