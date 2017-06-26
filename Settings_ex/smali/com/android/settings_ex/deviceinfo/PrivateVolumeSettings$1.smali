.class Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "connected"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    # setter for: Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mIsUsbConnected:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->access$002(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;Z)Z

    .line 145
    const-string v0, "StorageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Usb event, Usb connect status is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    # getter for: Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mIsUsbConnected:Z
    invoke-static {v2}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->access$000(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    # getter for: Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mUSBConnectPC:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->access$100(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Landroid/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings$1;->this$0:Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;

    # getter for: Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->mIsUsbConnected:Z
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;->access$000(Lcom/android/settings_ex/deviceinfo/PrivateVolumeSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 148
    :cond_0
    return-void
.end method
