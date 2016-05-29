.class Lcom/android/settings_ex/deviceinfo/Memory$3;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/deviceinfo/Memory;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/Memory;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 392
    const-string v5, "connected"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 393
    .local v3, "isUsbConnected":Z
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/Memory;->access$400(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/hardware/usb/UsbManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "usbFunction":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/Memory;->access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 395
    .local v1, "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1, v3, v4}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onUsbStateChanged(ZLjava/lang/String;)V

    goto :goto_0

    .line 398
    .end local v1    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUSBConnectPC:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/Memory;->access$500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 399
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUSBConnectPC:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/Memory;->access$500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090b8d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 409
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isUsbConnected":Z
    .end local v4    # "usbFunction":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 401
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isUsbConnected":Z
    .restart local v4    # "usbFunction":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mUSBConnectPC:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/Memory;->access$500(Lcom/android/settings_ex/deviceinfo/Memory;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-virtual {v6}, Lcom/android/settings_ex/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090b8e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 404
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isUsbConnected":Z
    .end local v4    # "usbFunction":Ljava/lang/String;
    :cond_3
    const-string v5, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 405
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/Memory$3;->this$0:Lcom/android/settings_ex/deviceinfo/Memory;

    # getter for: Lcom/android/settings_ex/deviceinfo/Memory;->mCategories:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings_ex/deviceinfo/Memory;->access$000(Lcom/android/settings_ex/deviceinfo/Memory;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;

    .line 406
    .restart local v1    # "category":Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v1}, Lcom/android/settings_ex/deviceinfo/StorageVolumePreferenceCategory;->onMediaScannerFinished()V

    goto :goto_2
.end method
