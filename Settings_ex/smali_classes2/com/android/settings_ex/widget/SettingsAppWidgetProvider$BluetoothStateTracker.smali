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

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .param p0, "bluetoothState"    # I

    .prologue
    .line 497
    packed-switch p0, :pswitch_data_0

    .line 507
    const/4 v0, 0x4

    return v0

    .line 499
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 501
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 503
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 505
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 497
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
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x4

    .line 451
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->-get3()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 452
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 453
    .local v0, "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 454
    return v2

    .line 456
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->-set0(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 457
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->-get3()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 458
    return v2

    .line 461
    .end local v0    # "manager":Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->-get3()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    return v1
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 443
    const v0, 0x7f0e0bc9

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 441
    const v0, 0x7f11037b

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 445
    if-eqz p1, :cond_0

    const v0, 0x7f0200da

    :goto_0
    return v0

    .line 446
    :cond_0
    const v0, 0x7f0200d9

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 440
    const v0, 0x7f11037a

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 442
    const v0, 0x7f11037c

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 485
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 486
    return-void

    .line 488
    :cond_0
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 489
    .local v0, "bluetoothState":I
    invoke-static {v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 484
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 466
    invoke-static {}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;->-get3()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 467
    const-string/jumbo v0, "SettingsAppWidgetProvider"

    const-string/jumbo v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return-void

    .line 474
    :cond_0
    new-instance v0, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 465
    return-void
.end method
