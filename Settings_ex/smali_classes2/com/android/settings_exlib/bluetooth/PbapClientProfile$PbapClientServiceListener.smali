.class final Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;
.super Ljava/lang/Object;
.source "PbapClientProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/PbapClientProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PbapClientServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/bluetooth/PbapClientProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/bluetooth/PbapClientProfile;Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;-><init>(Lcom/android/settings_exlib/bluetooth/PbapClientProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 60
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const-string/jumbo v3, "PbapClientProfile"

    const-string/jumbo v4, "Bluetooth service connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    check-cast p2, Landroid/bluetooth/BluetoothPbapClient;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    invoke-static {v3, p2}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;->-set1(Lcom/android/settings_exlib/bluetooth/PbapClientProfile;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;

    .line 65
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;->-get4(Lcom/android/settings_exlib/bluetooth/PbapClientProfile;)Landroid/bluetooth/BluetoothPbapClient;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothPbapClient;->getConnectedDevices()Ljava/util/List;

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
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;->-get1(Lcom/android/settings_exlib/bluetooth/PbapClientProfile;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 70
    .local v0, "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    if-nez v0, :cond_1

    .line 71
    const-string/jumbo v3, "PbapClientProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PbapClientProfile found new device: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    invoke-static {v3}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;->-get1(Lcom/android/settings_exlib/bluetooth/PbapClientProfile;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    invoke-static {v4}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;->-get2(Lcom/android/settings_exlib/bluetooth/PbapClientProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    invoke-static {v5}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;->-get3(Lcom/android/settings_exlib/bluetooth/PbapClientProfile;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfile;I)V

    .line 75
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 77
    .end local v0    # "device":Lcom/android/settings_exlib/bluetooth/CachedBluetoothDevice;
    .end local v2    # "nextDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_2
    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;->-set0(Lcom/android/settings_exlib/bluetooth/PbapClientProfile;Z)Z

    .line 59
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 81
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string/jumbo v0, "PbapClientProfile"

    const-string/jumbo v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/PbapClientProfile$PbapClientServiceListener;->this$0:Lcom/android/settings_exlib/bluetooth/PbapClientProfile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_exlib/bluetooth/PbapClientProfile;->-set0(Lcom/android/settings_exlib/bluetooth/PbapClientProfile;Z)Z

    .line 80
    return-void
.end method
