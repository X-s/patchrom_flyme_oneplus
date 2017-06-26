.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 907
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    if-nez v3, :cond_0

    .line 908
    const-string v3, "BluetoothSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick() called for other View: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :goto_0
    return-void

    .line 912
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    .line 914
    .local v1, "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 915
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "device_address"

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    new-instance v2, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    invoke-direct {v2}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;-><init>()V

    .line 918
    .local v2, "profileSettings":Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;
    invoke-virtual {v2, v0}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->setArguments(Landroid/os/Bundle;)V

    .line 919
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$6;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
