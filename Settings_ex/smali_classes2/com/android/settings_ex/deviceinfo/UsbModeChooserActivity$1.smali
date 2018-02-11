.class Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const-string/jumbo v3, "connected"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 73
    .local v1, "connected":Z
    const-string/jumbo v3, "host_connected"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 74
    .local v2, "hostConnected":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 68
    .end local v1    # "connected":Z
    .end local v2    # "hostConnected":Z
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local v1    # "connected":Z
    .restart local v2    # "hostConnected":Z
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;->this$0:Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;

    invoke-static {v3}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->-get1(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0
.end method
