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
    const v11, 0x7f02013e

    const v10, 0x7f02013c

    const v9, 0x7f020139

    const v8, 0x7f02015d

    const v7, 0x7f020158

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    sput-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 79
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 81
    const-class v3, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 82
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 83
    const-class v5, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 84
    const v6, 0x7f020166

    .line 80
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 87
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 88
    const-class v3, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 90
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 93
    const-class v5, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 94
    const v6, 0x7f020166

    .line 87
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 109
    const-class v3, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 110
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 111
    const-class v5, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 112
    const v6, 0x7f020140

    .line 108
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 115
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 116
    const-class v3, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 117
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 118
    const-class v5, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 119
    const v6, 0x7f02016c

    .line 115
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 137
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 138
    const-class v3, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 139
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 140
    const-class v5, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 141
    const v6, 0x7f020153

    .line 137
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 136
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/display/ScreenZoomSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 145
    const-class v3, Lcom/android/settings_ex/display/ScreenZoomSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 146
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 147
    const-class v5, Lcom/android/settings_ex/display/ScreenZoomSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 148
    const v6, 0x7f02014c

    .line 144
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 143
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 151
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 152
    const-class v3, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 153
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 154
    const-class v5, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 155
    const v6, 0x7f02014c

    .line 151
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 150
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 167
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 168
    const-class v3, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 170
    const-class v4, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 169
    const v5, 0x7f08001a

    .line 167
    invoke-direct {v2, v3, v5, v4, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 166
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/notification/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 175
    const-class v3, Lcom/android/settings_ex/notification/SoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 176
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 177
    const-class v5, Lcom/android/settings_ex/notification/SoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 178
    const v6, 0x7f02015f

    .line 174
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 197
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 198
    const-class v3, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 199
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 200
    const-class v5, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 197
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 196
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 204
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 205
    const-class v3, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 206
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 207
    const-class v5, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 208
    const v6, 0x7f020160

    .line 204
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 203
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 211
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 212
    const-class v3, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 214
    const-class v4, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 213
    const v5, 0x7f080067

    .line 211
    invoke-direct {v2, v3, v5, v4, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 218
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 219
    const-class v3, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 221
    const-class v4, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 220
    const v5, 0x7f080014

    .line 218
    invoke-direct {v2, v3, v5, v4, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 217
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 226
    const-class v3, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 227
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 228
    const-class v5, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 229
    const v6, 0x7f0201da

    .line 225
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 224
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/applications/SpecialAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 232
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 233
    const-class v3, Lcom/android/settings_ex/applications/SpecialAccessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 235
    const-class v4, Lcom/android/settings_ex/applications/SpecialAccessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 234
    const v5, 0x7f08008a

    .line 232
    invoke-direct {v2, v3, v5, v4, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 231
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 239
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 240
    const-class v3, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 241
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 242
    const-class v5, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 243
    const v6, 0x7f020154

    .line 239
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 238
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 253
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 254
    const-class v3, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 256
    const-class v4, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 255
    const v5, 0x7f080039

    .line 257
    const v6, 0x7f020150

    .line 253
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 252
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 260
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 261
    const-class v3, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 263
    const-class v4, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 262
    const v5, 0x7f080038

    .line 264
    const v6, 0x7f020150

    .line 260
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 259
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 267
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 268
    const-class v3, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 269
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 270
    const-class v5, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 267
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 266
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 274
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 275
    const-class v3, Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 276
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 277
    const-class v5, Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 273
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 281
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 282
    const-class v3, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 283
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 284
    const-class v5, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 285
    const v6, 0x7f02013b

    .line 281
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 280
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 288
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 289
    const-class v3, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 290
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 291
    const-class v5, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 292
    const v6, 0x7f02014f

    .line 288
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 287
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 295
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 296
    const-class v3, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 297
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 298
    const-class v5, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 299
    const v6, 0x7f02013d

    .line 295
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 294
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 302
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 303
    const-class v3, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 305
    const-class v4, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 304
    const v5, 0x7f080023

    .line 306
    const v6, 0x7f020149

    .line 302
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 301
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 309
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 310
    const-class v3, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 311
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 312
    const-class v5, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 313
    const v6, 0x7f02013a

    .line 309
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 308
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 316
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 317
    const-class v3, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 318
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 319
    const-class v5, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 320
    const v6, 0x7f02015a

    .line 316
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 315
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 323
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 324
    const-class v3, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 325
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 326
    const-class v5, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 327
    const v6, 0x7f02014a

    .line 323
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 322
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 330
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 331
    const-class v3, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 332
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 333
    const-class v5, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 330
    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 329
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/LegalSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 337
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 338
    const-class v3, Lcom/android/settings_ex/LegalSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 339
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 340
    const-class v5, Lcom/android/settings_ex/LegalSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 336
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 356
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 357
    const-class v3, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 358
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 359
    const-class v5, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 360
    const v6, 0x7f0200fe

    .line 356
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 355
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/OPCredentialsManagementSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 365
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 366
    const-class v3, Lcom/oneplus/settings/OPCredentialsManagementSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 367
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 368
    const-class v5, Lcom/oneplus/settings/OPCredentialsManagementSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 365
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 364
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/OPButtonsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 371
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 372
    const-class v3, Lcom/oneplus/settings/OPButtonsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 373
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 374
    const-class v5, Lcom/oneplus/settings/OPButtonsSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 375
    const v6, 0x7f020143

    .line 371
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 370
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/OPGestureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 377
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 378
    const-class v3, Lcom/oneplus/settings/OPGestureSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 379
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 380
    const-class v5, Lcom/oneplus/settings/OPGestureSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 381
    const v6, 0x7f02014d

    .line 377
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 376
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 383
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 384
    const-class v3, Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 385
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 386
    const-class v5, Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 387
    const v6, 0x7f0201da

    .line 383
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 382
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 389
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 390
    const-class v3, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 391
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 392
    const-class v5, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 393
    const v6, 0x7f0201f8

    .line 389
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 388
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/applications/NotificationApps;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 397
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 398
    const-class v3, Lcom/android/settings_ex/applications/NotificationApps;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 400
    const-class v4, Lcom/android/settings_ex/applications/NotificationApps;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 399
    const v5, 0x7f08004e

    .line 397
    invoke-direct {v2, v3, v5, v4, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 396
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 403
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 404
    const-class v3, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 406
    const-class v4, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 405
    const v5, 0x7f08004a

    .line 403
    invoke-direct {v2, v3, v5, v4, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 402
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 410
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 411
    const-class v3, Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 412
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 413
    const-class v5, Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 414
    const v6, 0x7f0201f8

    .line 410
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 409
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 425
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    return-object v0
.end method

.method public static size()I
    .locals 1

    .prologue
    .line 421
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
    .line 429
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
