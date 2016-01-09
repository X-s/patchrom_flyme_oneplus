.class Lcom/android/server/storage/DeviceStorageMonitorService$1$1;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/storage/DeviceStorageMonitorService$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;->this$1:Lcom/android/server/storage/DeviceStorageMonitorService$1;

    iput-object p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "mIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$1$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 210
    return-void
.end method
