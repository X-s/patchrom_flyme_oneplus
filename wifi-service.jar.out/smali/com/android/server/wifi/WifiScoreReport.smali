.class public Lcom/android/server/wifi/WifiScoreReport;
.super Ljava/lang/Object;
.source "WifiScoreReport.java"


# static fields
.field private static final AGGRESSIVE_HANDOVER_PENALTY:I = 0x6

.field private static final BAD_LINKSPEED_PENALTY:I = 0x4

.field private static final BAD_RSSI_COUNT_PENALTY:I = 0x2

.field private static final GOOD_LINKSPEED_BONUS:I = 0x4

.field private static final HOME_VISIBLE_NETWORK_MAX_COUNT:I = 0x6

.field private static final LINK_STUCK_PENALTY:I = 0x2

.field private static final MAX_BAD_LINKSPEED_COUNT:I = 0x6

.field private static final MAX_BAD_RSSI_COUNT:I = 0x7

.field private static final MAX_LOW_RSSI_COUNT:I = 0x1

.field private static final MAX_STUCK_LINK_COUNT:I = 0x5

.field private static final MAX_SUCCESS_COUNT_OF_STUCK_LINK:I = 0x3

.field private static final MIN_NUM_TICKS_AT_STATE:I = 0x3e8

.field private static final MIN_SUCCESS_COUNT:I = 0x5

.field private static final MIN_SUSTAINED_LINK_STUCK_COUNT:I = 0x1

.field private static final MIN_TX_RATE_FOR_WORKING_LINK:D = 0.3

.field private static final SCAN_CACHE_COUNT_PENALTY:I = 0x2

.field private static final SCAN_CACHE_VISIBILITY_MS:I = 0x2ee0

.field private static final STARTING_SCORE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final USER_DISCONNECT_PENALTY:I = 0x5


# instance fields
.field private mBadLinkspeedcount:I

.field private mReport:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "report"    # Ljava/lang/String;
    .param p2, "badLinkspeedcount"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/server/wifi/WifiScoreReport;->mReport:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/android/server/wifi/WifiScoreReport;->mBadLinkspeedcount:I

    .line 59
    return-void
.end method

.method public static calculateScore(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/NetworkAgent;Lcom/android/server/wifi/WifiScoreReport;ILcom/android/server/wifi/WifiMetrics;Z)Lcom/android/server/wifi/WifiScoreReport;
    .locals 24
    .param p0, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p1, "currentConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p3, "networkAgent"    # Landroid/net/NetworkAgent;
    .param p4, "lastReport"    # Lcom/android/server/wifi/WifiScoreReport;
    .param p5, "aggressiveHandover"    # I
    .param p6, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;
    .param p7, "autoSwitchToMobileData"    # Z

    .prologue
    .line 103
    const/4 v3, 0x0

    .line 104
    .local v3, "debugLogging":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    if-lez v18, :cond_0

    .line 105
    const/4 v3, 0x1

    .line 108
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/16 v16, 0x38

    .line 111
    .local v16, "score":I
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v18

    if-eqz v18, :cond_24

    .line 112
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mBadLinkSpeed24:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_24

    .line 111
    const/4 v6, 0x1

    .line 115
    .local v6, "isBadLinkspeed":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v18

    if-eqz v18, :cond_26

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mGoodLinkSpeed24:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_26

    .line 115
    const/4 v8, 0x1

    .line 120
    .local v8, "isGoodLinkspeed":Z
    :goto_1
    const/4 v2, 0x0

    .line 121
    .local v2, "badLinkspeedcount":I
    if-eqz p4, :cond_1

    .line 122
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wifi/WifiScoreReport;->getBadLinkspeedcount()I

    move-result v2

    .line 125
    :cond_1
    if-eqz v6, :cond_28

    .line 126
    const/16 v18, 0x6

    move/from16 v0, v18

    if-ge v2, v0, :cond_2

    .line 127
    add-int/lit8 v2, v2, 0x1

    .line 135
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    const-string/jumbo v18, " bl("

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_3
    if-eqz v8, :cond_4

    const-string/jumbo v18, " gl"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_4
    const/16 v17, 0x0

    .line 147
    .local v17, "use24Thresholds":Z
    const/4 v4, 0x0

    .line 149
    .local v4, "homeNetworkBoost":Z
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    move-result-object v15

    .line 150
    .local v15, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz p1, :cond_6

    if-eqz v15, :cond_6

    .line 152
    const-wide/16 v18, 0x2ee0

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    move-result-object v18

    .line 151
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    .line 153
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 154
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v18, v0

    sget v19, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 155
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    move/from16 v18, v0

    .line 156
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x2

    .line 155
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 157
    const/16 v17, 0x1

    .line 160
    :cond_5
    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    move-result v18

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    .line 161
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/BitSet;->cardinality()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 162
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v18, v0

    .line 163
    const/16 v19, 0x1

    .line 162
    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->get(I)Z

    move-result v18

    .line 160
    if-eqz v18, :cond_6

    .line 166
    const/4 v4, 0x1

    .line 169
    :cond_6
    if-eqz v4, :cond_7

    const-string/jumbo v18, " hn"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :cond_7
    if-eqz v17, :cond_8

    const-string/jumbo v18, " u24"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v18

    mul-int/lit8 v19, p5, 0x6

    sub-int v19, v18, v19

    .line 173
    if-eqz v4, :cond_29

    const/16 v18, 0x5

    .line 172
    :goto_3
    add-int v12, v19, v18

    .line 174
    .local v12, "rssi":I
    const-string/jumbo v18, " rssi=%d ag=%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    if-nez v17, :cond_2a

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    move-result v5

    .line 178
    .local v5, "is24GHz":Z
    :goto_4
    if-eqz v5, :cond_2b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_2b

    const/4 v7, 0x1

    .line 180
    .local v7, "isBadRSSI":Z
    :goto_5
    if-eqz v5, :cond_2d

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_2d

    const/4 v10, 0x1

    .line 183
    .local v10, "isLowRSSI":Z
    :goto_6
    if-eqz v5, :cond_30

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v18

    if-lt v12, v0, :cond_30

    const/4 v9, 0x1

    .line 187
    .local v9, "isHighRSSI":Z
    :goto_7
    if-eqz v7, :cond_9

    const-string/jumbo v18, " br"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :cond_9
    if-eqz v10, :cond_a

    const-string/jumbo v18, " lr"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_a
    if-eqz v9, :cond_b

    const-string/jumbo v18, " hr"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_b
    const/4 v11, 0x0

    .line 192
    .local v11, "penalizedDueToUserTriggeredDisconnect":I
    if-eqz p1, :cond_13

    .line 193
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_c

    .line 194
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_13

    .line 195
    :cond_c
    if-eqz v7, :cond_34

    .line 196
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 197
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 200
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_d

    .line 201
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    .line 203
    :cond_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_e

    .line 204
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 206
    :cond_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_f

    .line 207
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 209
    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 211
    :cond_10
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 212
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v18, v0

    if-gtz v18, :cond_11

    .line 213
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_33

    .line 216
    :cond_11
    :goto_8
    const/16 v16, 0x33

    .line 217
    const/4 v11, 0x1

    .line 218
    const-string/jumbo v18, " p1"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_12
    :goto_9
    const-string/jumbo v18, " ticks %d,%d,%d"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    .line 259
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    .line 260
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x2

    aput-object v20, v19, v21

    .line 258
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_13
    if-eqz v3, :cond_16

    .line 264
    const-string/jumbo v13, ""

    .line 265
    .local v13, "rssiStatus":Ljava/lang/String;
    if-eqz v7, :cond_3c

    .line 266
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " badRSSI "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 272
    :cond_14
    :goto_a
    if-eqz v6, :cond_15

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " lowSpeed "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 273
    :cond_15
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "calculateWifiScore freq="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 274
    const-string/jumbo v20, " speed="

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 274
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 275
    const-string/jumbo v20, " score="

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 275
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 277
    const-string/jumbo v20, " -> txbadrate="

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 277
    const-string/jumbo v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 278
    const-string/jumbo v20, " txgoodrate="

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 278
    const-string/jumbo v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 279
    const-string/jumbo v20, " txretriesrate="

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 279
    const-string/jumbo v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 280
    const-string/jumbo v20, " rxrate="

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 280
    const-string/jumbo v20, "%.2f"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    const/16 v23, 0x0

    aput-object v22, v21, v23

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 281
    const-string/jumbo v20, " userTriggerdPenalty"

    .line 273
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v13    # "rssiStatus":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_3e

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    cmpg-double v18, v18, v20

    if-gez v18, :cond_3e

    .line 285
    if-nez v7, :cond_17

    .line 284
    if-eqz v10, :cond_3e

    .line 287
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_18

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 290
    :cond_18
    const-string/jumbo v18, " ls+=%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    if-eqz v3, :cond_19

    .line 292
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " bad link -> stuck count ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 292
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_19
    :goto_b
    const-string/jumbo v18, " [%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1a

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    mul-int/lit8 v18, v18, 0x2

    sub-int v16, v16, v18

    .line 312
    :cond_1a
    const-string/jumbo v18, ",%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    if-eqz v6, :cond_40

    .line 315
    add-int/lit8 v16, v16, -0x4

    .line 316
    if-eqz v3, :cond_1b

    .line 317
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " isBadLinkspeed   ---> count="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 318
    const-string/jumbo v20, " score="

    .line 317
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 318
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 317
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_1b
    :goto_c
    const-string/jumbo v18, ",%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    if-eqz v7, :cond_41

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 340
    :cond_1c
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v16, v16, v18

    .line 341
    const-string/jumbo v18, ",%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    if-eqz v3, :cond_1d

    .line 344
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " badRSSI count"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 345
    const-string/jumbo v20, " lowRSSI count"

    .line 344
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 344
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 346
    const-string/jumbo v20, " --> score "

    .line 344
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 346
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 344
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1d
    if-eqz v9, :cond_1e

    .line 350
    add-int/lit8 v16, v16, 0x5

    .line 351
    if-eqz v3, :cond_1e

    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " isHighRSSI       ---> score="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_1e
    const-string/jumbo v18, ",%d]"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string/jumbo v18, " brc=%d lrc=%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x1

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    if-nez p7, :cond_1f

    const/16 v18, 0x1

    move/from16 v0, p5

    move/from16 v1, v18

    if-ne v0, v1, :cond_43

    .line 361
    :cond_1f
    const/16 v18, 0x3c

    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_20

    .line 362
    const/16 v16, 0x3c

    .line 363
    :cond_20
    if-gez v16, :cond_21

    .line 364
    const/16 v16, 0x0

    .line 371
    :cond_21
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_23

    .line 372
    if-eqz v3, :cond_22

    .line 373
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "calculateWifiScore() report new score "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_22
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->score:I

    .line 376
    if-eqz p3, :cond_23

    .line 377
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkScore(I)V

    .line 380
    :cond_23
    move-object/from16 v0, p6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementWifiScoreCount(I)V

    .line 381
    new-instance v18, Lcom/android/server/wifi/WifiScoreReport;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiScoreReport;-><init>(Ljava/lang/String;I)V

    return-object v18

    .line 113
    .end local v2    # "badLinkspeedcount":I
    .end local v4    # "homeNetworkBoost":Z
    .end local v5    # "is24GHz":Z
    .end local v6    # "isBadLinkspeed":Z
    .end local v7    # "isBadRSSI":Z
    .end local v8    # "isGoodLinkspeed":Z
    .end local v9    # "isHighRSSI":Z
    .end local v10    # "isLowRSSI":Z
    .end local v11    # "penalizedDueToUserTriggeredDisconnect":I
    .end local v12    # "rssi":I
    .end local v15    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v17    # "use24Thresholds":Z
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v18

    if-eqz v18, :cond_25

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    .line 114
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mBadLinkSpeed5:I

    move/from16 v19, v0

    .line 113
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_25

    const/4 v6, 0x1

    .restart local v6    # "isBadLinkspeed":Z
    goto/16 :goto_0

    .end local v6    # "isBadLinkspeed":Z
    :cond_25
    const/4 v6, 0x0

    .restart local v6    # "isBadLinkspeed":Z
    goto/16 :goto_0

    .line 117
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v18

    if-eqz v18, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    .line 118
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mGoodLinkSpeed5:I

    move/from16 v19, v0

    .line 117
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_27

    const/4 v8, 0x1

    .restart local v8    # "isGoodLinkspeed":Z
    goto/16 :goto_1

    .end local v8    # "isGoodLinkspeed":Z
    :cond_27
    const/4 v8, 0x0

    .restart local v8    # "isGoodLinkspeed":Z
    goto/16 :goto_1

    .line 130
    .restart local v2    # "badLinkspeedcount":I
    :cond_28
    if-lez v2, :cond_2

    .line 131
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2

    .line 173
    .restart local v4    # "homeNetworkBoost":Z
    .restart local v15    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v17    # "use24Thresholds":Z
    :cond_29
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 176
    .restart local v12    # "rssi":I
    :cond_2a
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 179
    .restart local v5    # "is24GHz":Z
    :cond_2b
    if-nez v5, :cond_2c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_2c

    const/4 v7, 0x1

    .restart local v7    # "isBadRSSI":Z
    goto/16 :goto_5

    .end local v7    # "isBadRSSI":Z
    :cond_2c
    const/4 v7, 0x0

    .restart local v7    # "isBadRSSI":Z
    goto/16 :goto_5

    .line 181
    :cond_2d
    if-nez v5, :cond_2f

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2e

    const/4 v10, 0x1

    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    .end local v10    # "isLowRSSI":Z
    :cond_2e
    const/4 v10, 0x0

    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    .line 181
    .end local v10    # "isLowRSSI":Z
    :cond_2f
    const/4 v10, 0x0

    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    .line 184
    :cond_30
    if-nez v5, :cond_32

    .line 185
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v18

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_31

    const/4 v9, 0x1

    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    .end local v9    # "isHighRSSI":Z
    :cond_31
    const/4 v9, 0x0

    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    .line 184
    .end local v9    # "isHighRSSI":Z
    :cond_32
    const/4 v9, 0x0

    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    .line 214
    .restart local v11    # "penalizedDueToUserTriggeredDisconnect":I
    :cond_33
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_12

    goto/16 :goto_8

    .line 220
    :cond_34
    if-eqz v10, :cond_39

    .line 221
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 222
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_37

    .line 225
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_35

    .line 226
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 228
    :cond_35
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_36

    .line 229
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 231
    :cond_36
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 233
    :cond_37
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 234
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v18, v0

    if-gtz v18, :cond_38

    .line 235
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_12

    .line 237
    :cond_38
    const/16 v16, 0x33

    .line 238
    const/4 v11, 0x2

    .line 239
    const-string/jumbo v18, " p2"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 241
    :cond_39
    if-nez v9, :cond_12

    .line 242
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 243
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v18, v0

    const/16 v19, 0x3e8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_3b

    .line 246
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_3a

    .line 247
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 249
    :cond_3a
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 251
    :cond_3b
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    move/from16 v18, v0

    if-eqz v18, :cond_12

    .line 252
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v18, v0

    if-lez v18, :cond_12

    .line 253
    const/16 v16, 0x33

    .line 254
    const/4 v11, 0x3

    .line 255
    const-string/jumbo v18, " p3"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    .line 267
    .restart local v13    # "rssiStatus":Ljava/lang/String;
    :cond_3c
    if-eqz v9, :cond_3d

    .line 268
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " highRSSI "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a

    .line 269
    :cond_3d
    if-eqz v10, :cond_14

    .line 270
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " lowRSSI "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a

    .line 295
    .end local v13    # "rssiStatus":Ljava/lang/String;
    :cond_3e
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    move-wide/from16 v18, v0

    const-wide v20, 0x3fd3333333333333L    # 0.3

    cmpg-double v18, v18, v20

    if-gez v18, :cond_19

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    if-lez v18, :cond_3f

    .line 297
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    .line 299
    :cond_3f
    const-string/jumbo v18, " ls-=%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    if-eqz v3, :cond_19

    .line 301
    const-string/jumbo v18, "WifiStateMachine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, " good link -> stuck count ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 302
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 301
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 320
    :cond_40
    if-eqz v8, :cond_1b

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    cmpl-double v18, v18, v20

    if-lez v18, :cond_1b

    .line 321
    add-int/lit8 v16, v16, 0x4

    goto/16 :goto_c

    .line 329
    :cond_41
    if-eqz v10, :cond_42

    .line 330
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    if-lez v18, :cond_1c

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    goto/16 :goto_d

    .line 336
    :cond_42
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    .line 337
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    goto/16 :goto_d

    .line 366
    :cond_43
    const/16 v16, 0x3c

    goto/16 :goto_e
.end method


# virtual methods
.method public getBadLinkspeedcount()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mBadLinkspeedcount:I

    return v0
.end method

.method public getReport()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mReport:Ljava/lang/String;

    return-object v0
.end method
