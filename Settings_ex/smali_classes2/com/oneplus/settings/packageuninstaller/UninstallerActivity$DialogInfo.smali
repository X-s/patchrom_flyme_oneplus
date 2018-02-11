.class Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;
.super Ljava/lang/Object;
.source "UninstallerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DialogInfo"
.end annotation


# instance fields
.field activityInfo:Landroid/content/pm/ActivityInfo;

.field allUsers:Z

.field appInfo:Landroid/content/pm/ApplicationInfo;

.field callback:Landroid/os/IBinder;

.field user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
