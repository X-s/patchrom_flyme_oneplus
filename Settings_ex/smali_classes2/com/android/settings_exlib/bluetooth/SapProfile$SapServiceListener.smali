.class final Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;
.super Ljava/lang/Object;
.source "SapProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/SapProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/bluetooth/SapProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/SapProfile;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/bluetooth/SapProfile;Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/SapProfile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;-><init>(Lcom/android/settings_exlib/bluetooth/SapProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 62
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SapProfile"

    const-string/jumbo v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    check-cast p2, Landroid/bluetooth/BluetoothSap;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v3, p2}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-set1(Lcom/android/settings_exlib/bluetooth/SapProfile;Landroid/bluetooth/BluetoothSap;)Landroid/bluetooth/BluetoothSap;

    .line 65
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-get4(Lcom/android/settings_exlib/bluetooth/SapProfile;)Landroid/bluetooth/BluetoothSap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSap;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 68
    .local v2, "nextDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-get1(Lcom/android/settings_exlib/bluetooth/SapProfile;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 70
    .local v0, "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 71
    const-string/jumbo v3, "SapProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SapProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-get1(Lcom/android/settings_exlib/bluetooth/SapProfile;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    invoke-static {v4}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-get2(Lcom/android/settings_exlib/bluetooth/SapProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    invoke-static {v5}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-get3(Lcom/android/settings_exlib/bluetooth/SapProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    .line 75
    const/4 v4, 0x2

    .line 74
    invoke-virtual {v0, v3, v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;I)V

    .line 76
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 79
    .end local v0    # "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .end local v2    # "nextDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-get3(Lcom/android/settings_exlib/bluetooth/SapProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->callServiceConnectedListeners()V

    .line 80
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-set0(Lcom/android/settings_exlib/bluetooth/SapProfile;Z)Z

    .line 61
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 84
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SapProfile"

    const-string/jumbo v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    invoke-static {v0}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-get3(Lcom/android/settings_exlib/bluetooth/SapProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;->callServiceDisconnectedListeners()V

    .line 86
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/SapProfile$SapServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/SapProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_exlib/bluetooth/SapProfile;->-set0(Lcom/android/settings_exlib/bluetooth/SapProfile;Z)Z

    .line 83
    return-void
.end method
