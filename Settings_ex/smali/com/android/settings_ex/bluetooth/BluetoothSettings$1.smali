.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSettings.java"


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
    .line 136
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "state":I
    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    # invokes: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateDeviceName(Landroid/content/Context;)V
    invoke-static {v2, p1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$000(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Landroid/content/Context;)V

    .line 147
    :cond_0
    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    const/4 v3, 0x1

    # setter for: Lcom/android/settings_ex/bluetooth/BluetoothSettings;->mInitiateDiscoverable:Z
    invoke-static {v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->access$102(Lcom/android/settings_ex/bluetooth/BluetoothSettings;Z)Z

    .line 151
    :cond_1
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$1;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->handleStateChanged(I)V

    .line 154
    :cond_2
    return-void
.end method
