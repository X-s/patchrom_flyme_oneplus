.class Lcom/android/settings_ex/applications/ManageDefaultApps$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "ManageDefaultApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageDefaultApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/ManageDefaultApps;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageDefaultApps$2;->this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageDefaultApps$2;->this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;

    # getter for: Lcom/android/settings_ex/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageDefaultApps;->access$200(Lcom/android/settings_ex/applications/ManageDefaultApps;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageDefaultApps$2;->this$0:Lcom/android/settings_ex/applications/ManageDefaultApps;

    # getter for: Lcom/android/settings_ex/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageDefaultApps;->access$100(Lcom/android/settings_ex/applications/ManageDefaultApps;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 75
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 80
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 85
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageDefaultApps$2;->sendUpdate()V

    .line 90
    return-void
.end method
