.class Lcom/android/server/storage/DeviceStorageMonitorService$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 706
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 708
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$102(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    .line 710
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$5;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    # getter for: Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->access$000(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 714
    :cond_0
    return-void
.end method
