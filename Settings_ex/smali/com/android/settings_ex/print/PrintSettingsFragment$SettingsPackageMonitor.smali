.class Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/print/PrintSettingsFragment;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/print/PrintSettingsFragment;Lcom/android/settings_ex/print/PrintSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/print/PrintSettingsFragment;
    .param p2, "x1"    # Lcom/android/settings_ex/print/PrintSettingsFragment$1;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;-><init>(Lcom/android/settings_ex/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings_ex/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->access$300(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 318
    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings_ex/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->access$300(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 323
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings_ex/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->access$300(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 328
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintSettingsFragment$SettingsPackageMonitor;->this$0:Lcom/android/settings_ex/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings_ex/print/PrintSettingsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/print/PrintSettingsFragment;->access$300(Lcom/android/settings_ex/print/PrintSettingsFragment;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 333
    return-void
.end method
