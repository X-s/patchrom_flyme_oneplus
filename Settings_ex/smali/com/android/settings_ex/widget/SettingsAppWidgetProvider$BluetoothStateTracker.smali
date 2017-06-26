.class final Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;
.super Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$1;

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .param p0, "bluetoothState"    # I

    .prologue
    .line 494
    packed-switch p0, :pswitch_data_0

    .line 504
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 496
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 498
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 500
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 502
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 451
    # getter for: Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 452
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 453
    .local v0, "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 454
    const/4 v1, 0x4

    .line 458
    .end local v0    # "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    :goto_0
    return v1

    .line 456
    .restart local v0    # "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$802(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 458
    .end local v0    # "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    :cond_1
    # getter for: Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    goto :goto_0
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 443
    const v0, 0x7f0c09ec

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 441
    const v0, 0x7f120261

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 445
    if-eqz p1, :cond_0

    const v0, 0x7f020036

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020035

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 440
    const v0, 0x7f120260

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 442
    const v0, 0x7f120262

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 482
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 486
    .local v0, "bluetoothState":I
    invoke-static {v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 463
    # getter for: Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 464
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
