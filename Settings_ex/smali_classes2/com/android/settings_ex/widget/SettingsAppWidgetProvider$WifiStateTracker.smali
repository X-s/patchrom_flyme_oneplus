.class final Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;
.super Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$StateTracker;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .param p0, "wifiState"    # I

    .prologue
    .line 421
    packed-switch p0, :pswitch_data_0

    .line 431
    const/4 v0, 0x4

    return v0

    .line 423
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 425
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 427
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 429
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 370
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    return v1

    .line 373
    :cond_0
    const/4 v1, 0x4

    return v1
.end method

.method public getButtonDescription()I
    .locals 1

    .prologue
    .line 358
    const v0, 0x7f0e0bc8

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .prologue
    .line 356
    const v0, 0x7f110378

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 360
    if-eqz p1, :cond_0

    const v0, 0x7f0200e5

    :goto_0
    return v0

    .line 361
    :cond_0
    const v0, 0x7f0200e4

    goto :goto_0
.end method

.method public getContainerId()I
    .locals 1

    .prologue
    .line 355
    const v0, 0x7f110377

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .prologue
    .line 357
    const v0, 0x7f110379

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 409
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    return-void

    .line 412
    :cond_0
    const-string/jumbo v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 413
    .local v0, "wifiState":I
    invoke-static {v0}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 408
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .prologue
    .line 379
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 380
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 381
    const-string/jumbo v1, "SettingsAppWidgetProvider"

    const-string/jumbo v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return-void

    .line 389
    :cond_0
    new-instance v1, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker$1;-><init>(Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 377
    return-void
.end method
