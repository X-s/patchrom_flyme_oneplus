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
    const v11, 0x7f02014d

    const v10, 0x7f02013f

    const v9, 0x7f02013d

    const v8, 0x7f02013a

    const v7, 0x7f02015e

    .line 72
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 74
    sput-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    .line 78
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 80
    const-class v3, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 81
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 82
    const-class v5, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 83
    const v6, 0x7f020167

    .line 79
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 87
    const-class v3, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 89
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 92
    const-class v5, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 93
    const v6, 0x7f020167

    .line 86
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 107
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 108
    const-class v3, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 109
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 110
    const-class v5, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 111
    const v6, 0x7f020141

    .line 107
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 106
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 114
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 115
    const-class v3, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 116
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 117
    const-class v5, Lcom/android/settings_ex/sim/SimSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 118
    const v6, 0x7f02016d

    .line 114
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 137
    const-class v3, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 138
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 139
    const-class v5, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 140
    const v6, 0x7f020154

    .line 136
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 135
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/display/ScreenZoomSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 144
    const-class v3, Lcom/android/settings_ex/display/ScreenZoomSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 145
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 146
    const-class v5, Lcom/android/settings_ex/display/ScreenZoomSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 143
    invoke-direct {v2, v3, v4, v5, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 142
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 151
    const-class v3, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 152
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 153
    const-class v5, Lcom/android/settings_ex/DisplaySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 150
    invoke-direct {v2, v3, v4, v5, v11}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 149
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 166
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 167
    const-class v3, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 169
    const-class v4, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 168
    const v5, 0x7f08001a

    .line 170
    const v6, 0x7f020159

    .line 166
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/notification/SoundSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 174
    const-class v3, Lcom/android/settings_ex/notification/SoundSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 175
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 176
    const-class v5, Lcom/android/settings_ex/notification/SoundSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 177
    const v6, 0x7f020160

    .line 173
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 172
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 196
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 197
    const-class v3, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 198
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 199
    const-class v5, Lcom/android/settings_ex/notification/ZenModePrioritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 200
    const v6, 0x7f020159

    .line 196
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 195
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 203
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 204
    const-class v3, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 205
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 206
    const-class v5, Lcom/android/settings_ex/deviceinfo/StorageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 207
    const v6, 0x7f020161

    .line 203
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 202
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 210
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 211
    const-class v3, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 213
    const-class v4, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 212
    const v5, 0x7f080068

    .line 210
    invoke-direct {v2, v3, v5, v4, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 209
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 217
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 218
    const-class v3, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 220
    const-class v4, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 219
    const v5, 0x7f080014

    .line 217
    invoke-direct {v2, v3, v5, v4, v10}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 216
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 225
    const-class v3, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 226
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 227
    const-class v5, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 228
    const v6, 0x7f0201dc

    .line 224
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 223
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/applications/SpecialAccessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 231
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 232
    const-class v3, Lcom/android/settings_ex/applications/SpecialAccessSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 234
    const-class v4, Lcom/android/settings_ex/applications/SpecialAccessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 233
    const v5, 0x7f08008b

    .line 231
    invoke-direct {v2, v3, v5, v4, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 230
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 238
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 239
    const-class v3, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 240
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 241
    const-class v5, Lcom/android/settings_ex/users/UserSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 242
    const v6, 0x7f020155

    .line 238
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 237
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 252
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 253
    const-class v3, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 255
    const-class v4, Lcom/android/settings_ex/location/LocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 254
    const v5, 0x7f080039

    .line 256
    const v6, 0x7f020151

    .line 252
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 251
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 259
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 260
    const-class v3, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 262
    const-class v4, Lcom/android/settings_ex/location/ScanningSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 261
    const v5, 0x7f080038

    .line 263
    const v6, 0x7f020151

    .line 259
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 258
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 266
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 267
    const-class v3, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 268
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 269
    const-class v5, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 266
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 265
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 273
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 274
    const-class v3, Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 275
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 276
    const-class v5, Lcom/android/settings_ex/ScreenPinningSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 272
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 280
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 281
    const-class v3, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 282
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 283
    const-class v5, Lcom/android/settings_ex/accounts/AccountSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 284
    const v6, 0x7f02013c

    .line 280
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 279
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 287
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 288
    const-class v3, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 289
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 290
    const-class v5, Lcom/android/settings_ex/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 291
    const v6, 0x7f020150

    .line 287
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 286
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 294
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 295
    const-class v3, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 296
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 297
    const-class v5, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 298
    const v6, 0x7f02013e

    .line 294
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 293
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 301
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 302
    const-class v3, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 304
    const-class v4, Lcom/android/settings_ex/DateTimeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 303
    const v5, 0x7f080023

    .line 305
    const v6, 0x7f02014a

    .line 301
    invoke-direct {v2, v3, v5, v4, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 300
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 308
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 309
    const-class v3, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 310
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 311
    const-class v5, Lcom/android/settings_ex/accessibility/AccessibilitySettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 312
    const v6, 0x7f02013b

    .line 308
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 307
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 315
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 316
    const-class v3, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 317
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 318
    const-class v5, Lcom/android/settings_ex/print/PrintSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 319
    const v6, 0x7f02015b

    .line 315
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 314
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 322
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 323
    const-class v3, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 324
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 325
    const-class v5, Lcom/android/settings_ex/DevelopmentSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 326
    const v6, 0x7f02014b

    .line 322
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 321
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 329
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 330
    const-class v3, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 331
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 332
    const-class v5, Lcom/android/settings_ex/DeviceInfoSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 328
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/android/settings_ex/LegalSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 336
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 337
    const-class v3, Lcom/android/settings_ex/LegalSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 338
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 339
    const-class v5, Lcom/android/settings_ex/LegalSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 336
    invoke-direct {v2, v3, v4, v5, v8}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 335
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 355
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 356
    const-class v3, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 357
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 358
    const-class v5, Lcom/oneplus/settings/notification/OPNotificationAndNotdisturb;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 359
    const v6, 0x7f0200ff

    .line 355
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 354
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/OPCredentialsManagementSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 364
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 365
    const-class v3, Lcom/oneplus/settings/OPCredentialsManagementSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 366
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 367
    const-class v5, Lcom/oneplus/settings/OPCredentialsManagementSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-direct {v2, v3, v4, v5, v7}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 363
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/OPButtonsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 370
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 371
    const-class v3, Lcom/oneplus/settings/OPButtonsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 372
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 373
    const-class v5, Lcom/oneplus/settings/OPButtonsSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 374
    const v6, 0x7f020144

    .line 370
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 369
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/OPGestureSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 376
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 377
    const-class v3, Lcom/oneplus/settings/OPGestureSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 378
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 379
    const-class v5, Lcom/oneplus/settings/OPGestureSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 380
    const v6, 0x7f02014e

    .line 376
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 375
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 382
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 383
    const-class v3, Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 384
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 385
    const-class v5, Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 386
    const v6, 0x7f0201dc

    .line 382
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 381
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 388
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 389
    const-class v3, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 390
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 391
    const-class v5, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 392
    const v6, 0x7f0201f9

    .line 388
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 387
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 395
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 396
    const-class v3, Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 397
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 398
    const-class v5, Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 399
    const v6, 0x7f0201f9

    .line 395
    invoke-direct {v2, v3, v4, v5, v6}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 394
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    const-class v1, Lcom/oneplus/settings/OPApplicationsSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 401
    new-instance v2, Landroid/provider/SearchIndexableResource;

    .line 402
    const-class v3, Lcom/oneplus/settings/OPApplicationsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/search/Ranking;->getRankForClassName(Ljava/lang/String;)I

    move-result v3

    .line 403
    sget v4, Lcom/android/settings_ex/search/SearchIndexableResources;->NO_DATA_RES_ID:I

    .line 404
    const-class v5, Lcom/oneplus/settings/OPApplicationsSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 401
    invoke-direct {v2, v3, v4, v5, v9}, Landroid/provider/SearchIndexableResource;-><init>(IILjava/lang/String;I)V

    .line 400
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 416
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/SearchIndexableResource;

    return-object v0
.end method

.method public static size()I
    .locals 1

    .prologue
    .line 412
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
    .line 420
    sget-object v0, Lcom/android/settings_ex/search/SearchIndexableResources;->sResMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
