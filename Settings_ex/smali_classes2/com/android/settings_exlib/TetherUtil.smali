.class public Lcom/android/settings_exlib/TetherUtil;
.super Ljava/lang/Object;
.source "TetherUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isEntitlementCheckRequired(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const-string/jumbo v2, "carrier_config"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 38
    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string/jumbo v3, "require_entitlement_checks_bool"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 39
    :catch_0
    move-exception v1

    .line 40
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    const/4 v2, 0x0

    return v2
.end method

.method public static isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 50
    const v3, 0x107001a

    .line 49
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "provisionApp":[Ljava/lang/String;
    const-string/jumbo v2, "net.tethering.noprovisioning"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    if-nez v0, :cond_1

    .line 53
    :cond_0
    return v1

    .line 56
    :cond_1
    invoke-static {p0}, Lcom/android/settings_exlib/TetherUtil;->isEntitlementCheckRequired(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    return v1

    .line 59
    :cond_2
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static setWifiTethering(ZLandroid/content/Context;)Z
    .locals 2
    .param p0, "enable"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 28
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v1

    return v1
.end method
