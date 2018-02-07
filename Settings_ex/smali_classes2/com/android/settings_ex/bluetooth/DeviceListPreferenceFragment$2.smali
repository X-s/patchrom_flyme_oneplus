.class Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$2;
.super Landroid/os/Handler;
.source "DeviceListPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 112
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-wrap1(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V

    .line 113
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 114
    .local v2, "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 115
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;

    .line 117
    .local v1, "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-get0(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-static {v3}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->-wrap0(Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;)V

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    iget-object v3, v3, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    .line 110
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;>;"
    .end local v1    # "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    .end local v2    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;>;"
    :cond_1
    return-void

    .line 125
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;>;"
    .restart local v1    # "preference":Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;
    .restart local v2    # "preferenceList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;>;"
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment$2;->this$0:Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->filterBondedDevice(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method
