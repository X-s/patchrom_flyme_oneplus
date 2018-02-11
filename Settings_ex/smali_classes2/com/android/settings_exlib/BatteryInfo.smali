.class public Lcom/android/settings_exlib/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;,
        Lcom/android/settings_exlib/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public batteryPercentString:Ljava/lang/String;

.field public mBatteryLevel:I

.field public mChargeLabelString:Ljava/lang/String;

.field private mCharging:Z

.field public mDischarging:Z

.field private mStats:Landroid/os/BatteryStats;

.field public remainingLabel:Ljava/lang/String;

.field public remainingTimeUs:J

.field private timePeriod:J


# direct methods
.method static synthetic -get0(Lcom/android/settings_exlib/BatteryInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_exlib/BatteryInfo;->mCharging:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_exlib/BatteryInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settings_exlib/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_exlib/BatteryInfo;->mDischarging:Z

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_exlib/BatteryInfo;->remainingTimeUs:J

    .line 33
    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;J)Lcom/android/settings_exlib/BatteryInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batteryBroadcast"    # Landroid/content/Intent;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "elapsedRealtimeUs"    # J

    .prologue
    .line 127
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 126
    invoke-static/range {v1 .. v6}, Lcom/android/settings_exlib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settings_exlib/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settings_exlib/BatteryInfo;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batteryBroadcast"    # Landroid/content/Intent;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "shortString"    # Z

    .prologue
    .line 132
    new-instance v6, Lcom/android/settings_exlib/BatteryInfo;

    invoke-direct {v6}, Lcom/android/settings_exlib/BatteryInfo;-><init>()V

    .line 133
    .local v6, "info":Lcom/android/settings_exlib/BatteryInfo;
    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/android/settings_exlib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    .line 134
    invoke-static/range {p1 .. p1}, Lcom/android/settings_exlib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v13

    iput v13, v6, Lcom/android/settings_exlib/BatteryInfo;->mBatteryLevel:I

    .line 135
    iget v13, v6, Lcom/android/settings_exlib/BatteryInfo;->mBatteryLevel:I

    invoke-static {v13}, Lcom/android/settings_exlib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settings_exlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 136
    const-string/jumbo v13, "plugged"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_0

    const/4 v13, 0x1

    :goto_0
    iput-boolean v13, v6, Lcom/android/settings_exlib/BatteryInfo;->mCharging:Z

    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 138
    .local v9, "resources":Landroid/content/res/Resources;
    iget-boolean v13, v6, Lcom/android/settings_exlib/BatteryInfo;->mCharging:Z

    if-nez v13, :cond_4

    .line 139
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v4

    .line 140
    .local v4, "drainTime":J
    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_3

    .line 141
    iput-wide v4, v6, Lcom/android/settings_exlib/BatteryInfo;->remainingTimeUs:J

    .line 143
    const-wide/16 v14, 0x3e8

    div-long v14, v4, v14

    .line 142
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 145
    .local v12, "timeString":Ljava/lang/String;
    if-eqz p5, :cond_1

    sget v13, Lcom/android/settings_exlib/R$string;->power_remaining_duration_only_short:I

    .line 144
    :goto_1
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 147
    const/4 v15, 0x0

    aput-object v12, v14, v15

    .line 144
    invoke-virtual {v9, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settings_exlib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 149
    if-eqz p5, :cond_2

    sget v13, Lcom/android/settings_exlib/R$string;->power_discharging_duration_short:I

    .line 148
    :goto_2
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    .line 151
    iget-object v15, v6, Lcom/android/settings_exlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v12, v14, v15

    .line 148
    invoke-virtual {v9, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settings_exlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    .line 192
    .end local v4    # "drainTime":J
    .end local v12    # "timeString":Ljava/lang/String;
    :goto_3
    return-object v6

    .line 136
    .end local v9    # "resources":Landroid/content/res/Resources;
    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    .line 146
    .restart local v4    # "drainTime":J
    .restart local v9    # "resources":Landroid/content/res/Resources;
    .restart local v12    # "timeString":Ljava/lang/String;
    :cond_1
    sget v13, Lcom/android/settings_exlib/R$string;->power_remaining_duration_only:I

    goto :goto_1

    .line 150
    :cond_2
    sget v13, Lcom/android/settings_exlib/R$string;->power_discharging_duration:I

    goto :goto_2

    .line 153
    .end local v12    # "timeString":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    iput-object v13, v6, Lcom/android/settings_exlib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 154
    iget-object v13, v6, Lcom/android/settings_exlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iput-object v13, v6, Lcom/android/settings_exlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    goto :goto_3

    .line 157
    .end local v4    # "drainTime":J
    :cond_4
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v2

    .line 158
    .local v2, "chargeTime":J
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v9, v0, v1}, Lcom/android/settings_exlib/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v11

    .line 160
    .local v11, "statusLabel":Ljava/lang/String;
    const-string/jumbo v13, "status"

    .line 161
    const/4 v14, 0x1

    .line 160
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 162
    .local v10, "status":I
    const-wide/16 v14, 0x0

    cmp-long v13, v2, v14

    if-lez v13, :cond_c

    const/4 v13, 0x5

    if-eq v10, v13, :cond_c

    .line 163
    const/4 v13, 0x0

    iput-boolean v13, v6, Lcom/android/settings_exlib/BatteryInfo;->mDischarging:Z

    .line 164
    iput-wide v2, v6, Lcom/android/settings_exlib/BatteryInfo;->remainingTimeUs:J

    .line 166
    const-wide/16 v14, 0x3e8

    div-long v14, v2, v14

    .line 165
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 167
    .restart local v12    # "timeString":Ljava/lang/String;
    const-string/jumbo v13, "plugged"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 169
    .local v7, "plugType":I
    const/4 v13, 0x1

    if-ne v7, v13, :cond_6

    .line 170
    if-eqz p5, :cond_5

    sget v8, Lcom/android/settings_exlib/R$string;->power_charging_duration_ac_short:I

    .line 182
    .local v8, "resId":I
    :goto_4
    sget v13, Lcom/android/settings_exlib/R$string;->power_remaining_duration_only:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    .line 183
    const/4 v15, 0x0

    aput-object v12, v14, v15

    .line 182
    invoke-virtual {v9, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settings_exlib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 184
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    .line 185
    iget-object v14, v6, Lcom/android/settings_exlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const/4 v14, 0x1

    aput-object v12, v13, v14

    .line 184
    invoke-virtual {v9, v8, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settings_exlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    goto :goto_3

    .line 171
    .end local v8    # "resId":I
    :cond_5
    sget v8, Lcom/android/settings_exlib/R$string;->power_charging_duration_ac:I

    .restart local v8    # "resId":I
    goto :goto_4

    .line 172
    .end local v8    # "resId":I
    :cond_6
    const/4 v13, 0x2

    if-ne v7, v13, :cond_8

    .line 173
    if-eqz p5, :cond_7

    sget v8, Lcom/android/settings_exlib/R$string;->power_charging_duration_usb_short:I

    .restart local v8    # "resId":I
    goto :goto_4

    .line 174
    .end local v8    # "resId":I
    :cond_7
    sget v8, Lcom/android/settings_exlib/R$string;->power_charging_duration_usb:I

    .restart local v8    # "resId":I
    goto :goto_4

    .line 175
    .end local v8    # "resId":I
    :cond_8
    const/4 v13, 0x4

    if-ne v7, v13, :cond_a

    .line 176
    if-eqz p5, :cond_9

    sget v8, Lcom/android/settings_exlib/R$string;->power_charging_duration_wireless_short:I

    .restart local v8    # "resId":I
    goto :goto_4

    .line 177
    .end local v8    # "resId":I
    :cond_9
    sget v8, Lcom/android/settings_exlib/R$string;->power_charging_duration_wireless:I

    .restart local v8    # "resId":I
    goto :goto_4

    .line 179
    .end local v8    # "resId":I
    :cond_a
    if-eqz p5, :cond_b

    sget v8, Lcom/android/settings_exlib/R$string;->power_charging_duration_short:I

    .restart local v8    # "resId":I
    goto :goto_4

    .line 180
    .end local v8    # "resId":I
    :cond_b
    sget v8, Lcom/android/settings_exlib/R$string;->power_charging_duration:I

    .restart local v8    # "resId":I
    goto :goto_4

    .line 187
    .end local v7    # "plugType":I
    .end local v8    # "resId":I
    .end local v12    # "timeString":Ljava/lang/String;
    :cond_c
    iput-object v11, v6, Lcom/android/settings_exlib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 189
    sget v13, Lcom/android/settings_exlib/R$string;->power_charging:I

    .line 188
    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    .line 189
    iget-object v15, v6, Lcom/android/settings_exlib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aput-object v11, v14, v15

    .line 188
    invoke-virtual {v9, v13, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v6, Lcom/android/settings_exlib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings_exlib/BatteryInfo$Callback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/android/settings_exlib/BatteryInfo$Callback;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settings_exlib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings_exlib/BatteryInfo$Callback;Z)V

    .line 98
    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings_exlib/BatteryInfo$Callback;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/android/settings_exlib/BatteryInfo$Callback;
    .param p2, "shortString"    # Z

    .prologue
    .line 104
    new-instance v0, Lcom/android/settings_exlib/BatteryInfo$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settings_exlib/BatteryInfo$2;-><init>(Landroid/content/Context;ZLcom/android/settings_exlib/BatteryInfo$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/BatteryInfo$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method

.method private static varargs parse(Landroid/os/BatteryStats;J[Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;)V
    .locals 37
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "remainingTimeUs"    # J
    .param p3, "parsers"    # [Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;

    .prologue
    .line 207
    const-wide/16 v28, 0x0

    .line 208
    .local v28, "startWalltime":J
    const-wide/16 v8, 0x0

    .line 209
    .local v8, "endDateWalltime":J
    const-wide/16 v10, 0x0

    .line 210
    .local v10, "endWalltime":J
    const-wide/16 v14, 0x0

    .line 211
    .local v14, "historyStart":J
    const-wide/16 v12, 0x0

    .line 212
    .local v12, "historyEnd":J
    const/16 v19, -0x1

    .line 207
    .local v19, "lastLevel":B
    const-wide/16 v6, 0x0

    .line 214
    .local v6, "curWalltime":J
    const-wide/16 v22, 0x0

    .line 215
    .local v22, "lastWallTime":J
    const-wide/16 v20, 0x0

    .line 216
    .local v20, "lastRealtime":J
    const/16 v18, 0x0

    .line 217
    .local v18, "lastInteresting":I
    const/16 v26, 0x0

    .line 218
    .local v26, "pos":I
    const/4 v5, 0x1

    .line 219
    .local v5, "first":Z
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 220
    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 221
    .end local v19    # "lastLevel":B
    .local v27, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 222
    add-int/lit8 v26, v26, 0x1

    .line 223
    if-eqz v5, :cond_1

    .line 224
    const/4 v5, 0x0

    .line 225
    move-object/from16 v0, v27

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 227
    :cond_1
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    .line 228
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 237
    :cond_2
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x39ef8b000L

    add-long v34, v34, v22

    cmp-long v32, v32, v34

    if-gtz v32, :cond_3

    .line 238
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    const-wide/32 v34, 0x493e0

    add-long v34, v34, v14

    cmp-long v32, v32, v34

    if-gez v32, :cond_4

    .line 239
    :cond_3
    const-wide/16 v28, 0x0

    .line 241
    :cond_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v22, v0

    .line 242
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 243
    const-wide/16 v32, 0x0

    cmp-long v32, v28, v32

    if-nez v32, :cond_5

    .line 244
    sub-long v32, v20, v14

    sub-long v28, v22, v32

    .line 247
    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 248
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v32, 0x1

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 249
    :cond_6
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v19, v0

    .line 251
    :cond_7
    move/from16 v18, v26

    .line 252
    move-object/from16 v0, v27

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto/16 :goto_0

    .line 256
    .end local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 257
    add-long v32, v22, v12

    sub-long v8, v32, v20

    .line 258
    const-wide/16 v32, 0x3e8

    div-long v32, p1, v32

    add-long v10, v8, v32

    .line 260
    const/16 v16, 0x0

    .line 261
    .local v16, "i":I
    move/from16 v4, v18

    .line 263
    .local v4, "N":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    .line 264
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2, v10, v11}, Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    .line 263
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 266
    :cond_9
    cmp-long v32, v8, v28

    if-lez v32, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_11

    .line 267
    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 268
    .restart local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_11

    move/from16 v0, v16

    if-ge v0, v4, :cond_11

    .line 269
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_b

    .line 270
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v20

    add-long v6, v6, v32

    .line 271
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 272
    sub-long v30, v6, v28

    .line 273
    .local v30, "x":J
    const-wide/16 v32, 0x0

    cmp-long v32, v30, v32

    if-gez v32, :cond_a

    .line 274
    const-wide/16 v30, 0x0

    .line 276
    :cond_a
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    .line 277
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v30

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    .line 276
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 280
    .end local v30    # "x":J
    :cond_b
    move-wide/from16 v24, v6

    .line 281
    .local v24, "lastWalltime":J
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    .line 282
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 283
    :cond_c
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    cmp-long v32, v32, v28

    if-ltz v32, :cond_f

    .line 284
    move-object/from16 v0, v27

    iget-wide v6, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 288
    :goto_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 291
    :cond_d
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    .line 292
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 293
    sub-long v32, v24, v6

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(J)J

    move-result-wide v32

    const-wide/32 v34, 0x36ee80

    cmp-long v32, v32, v34

    if-lez v32, :cond_10

    .line 294
    :cond_e
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    .line 295
    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;->onDataGap()V

    .line 294
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 286
    :cond_f
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v14

    add-long v6, v28, v32

    goto :goto_4

    .line 299
    .end local v24    # "lastWalltime":J
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 303
    .end local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 305
    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 306
    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;->onParsingDone()V

    .line 305
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 206
    :cond_12
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settings_exlib/graph/UsageView;[Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;)V
    .locals 12
    .param p1, "view"    # Lcom/android/settings_exlib/graph/UsageView;
    .param p2, "parsers"    # [Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;

    .prologue
    .line 50
    new-instance v2, Lcom/android/settings_exlib/BatteryInfo$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings_exlib/BatteryInfo$1;-><init>(Lcom/android/settings_exlib/BatteryInfo;Lcom/android/settings_exlib/graph/UsageView;)V

    .line 81
    .local v2, "parser":Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;
    array-length v6, p2

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;

    .line 82
    .local v3, "parserList":[Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_0

    .line 83
    aget-object v6, p2, v1

    aput-object v6, v3, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    array-length v6, p2

    aput-object v2, v3, v6

    .line 86
    iget-object v6, p0, Lcom/android/settings_exlib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/settings_exlib/BatteryInfo;->remainingTimeUs:J

    invoke-static {v6, v8, v9, v3}, Lcom/android/settings_exlib/BatteryInfo;->parse(Landroid/os/BatteryStats;J[Lcom/android/settings_exlib/BatteryInfo$BatteryDataParser;)V

    .line 87
    invoke-virtual {p1}, Lcom/android/settings_exlib/graph/UsageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    .local v0, "context":Landroid/content/Context;
    sget v6, Lcom/android/settings_exlib/R$string;->charge_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 89
    iget-wide v8, p0, Lcom/android/settings_exlib/BatteryInfo;->timePeriod:J

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 88
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "timeString":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 91
    .local v4, "remaining":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/settings_exlib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 92
    sget v6, Lcom/android/settings_exlib/R$string;->remaining_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 93
    iget-wide v8, p0, Lcom/android/settings_exlib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 92
    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 95
    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {p1, v6}, Lcom/android/settings_exlib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
