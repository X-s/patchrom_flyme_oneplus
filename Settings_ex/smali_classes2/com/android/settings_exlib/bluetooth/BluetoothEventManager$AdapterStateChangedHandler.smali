.class Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 183
    const-string/jumbo v6, "android.bluetooth.adapter.extra.STATE"

    .line 184
    const/high16 v7, -0x80000000

    .line 183
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 186
    .local v5, "state":I
    const/16 v6, 0xa

    if-ne v5, v6, :cond_0

    .line 188
    iget-object v6, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get5(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    iget-object v6, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-virtual {v6}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 192
    :cond_0
    iget-object v6, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get4(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 193
    iget-object v6, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get1(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 194
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v6, "is_first_boot"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 195
    .local v3, "isFirstBoot":Z
    const-string/jumbo v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isFirstBoot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz v3, :cond_1

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    .line 197
    iget-object v6, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-wrap1(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V

    .line 198
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 199
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v6, "is_first_boot"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget-object v6, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v7

    monitor-enter v7

    .line 204
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get0(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;

    .line 205
    .local v0, "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    invoke-interface {v0, v5}, Lcom/android/settings_exlib/bluetooth/BluetoothCallback;->onBluetoothStateChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 203
    .end local v0    # "callback":Lcom/android/settings_exlib/bluetooth/BluetoothCallback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v1    # "callback$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v7

    .line 209
    iget-object v6, p0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;->this$0:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    invoke-static {v6}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;->-get2(Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;->onBluetoothStateChanged(I)V

    .line 182
    return-void
.end method
