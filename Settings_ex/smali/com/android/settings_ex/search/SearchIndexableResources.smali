.class public final Lcom/android/settings_ex/search/SearchIndexableResources;
.super Ljava/lang/Object;
.source "SearchIndexableResources.java"


# static fields
.field public static NO_DATA_RES_ID:I

.field private static sResMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const v11, 0x7f020096

    const v10, 0x7f020091

    const v9, 0x7f02008a

    const v8, 0x7f0200d1

    const v7, 0x7f0200bd

    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 68
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080082

    const-class v5, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080084

    const-class v5, Lcom/android/settings_ex/wifi/SavedAccessPointsWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020098

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200d5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/HomeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200ae

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/notification/OtherSoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/notification/OtherSoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/notification/OtherSoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f08008c

    const-class v5, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200ca

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f08005c

    const-class v5, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080010

    const-class v5, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080006

    const-class v5, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/applications/ManageDefaultApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/applications/ManageDefaultApps;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/applications/ManageDefaultApps;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b8

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f08002b

    const-class v5, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b3

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f08002a

    const-class v5, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b3

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200c5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200c5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200b1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f020094

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080016

    const-class v5, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a3

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f02008c

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200c0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0200a5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/LegalSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/LegalSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    const-class v5, Lcom/android/settings_ex/LegalSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/WifiCallingSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/provider/SearchIndexableResource;

    const-class v3, Lcom/android/settings_ex/WifiCallingSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7f080083

    const-class v5, Lcom/android/settings_ex/WifiCallingSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method

.method public static getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 315
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    return-object v0
.end method

.method public static size()I
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public static values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
