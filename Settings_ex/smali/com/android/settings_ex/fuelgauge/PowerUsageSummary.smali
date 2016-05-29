.class public Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BATTERY_HISTORY_FILE:Ljava/lang/String; = "tmp_bat_history.bin"

.field private static final DEBUG:Z = false

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_ENABLE_SHOW_STATUSBAR:Ljava/lang/String; = "enable_show_statusbar"

.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MENU_BATTERY_SAVER:I = 0x3

.field private static final MENU_HELP:I = 0x4

.field private static final MENU_STATS_REFRESH:I = 0x2

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_AVERAGE_POWER_THRESHOLD_MILLI_AMP:I = 0x0

.field private static final MIN_POWER_THRESHOLD_MILLI_AMP:I = 0x5

.field static final MSG_REFRESH_STATS:I = 0x64

.field private static final SECONDS_IN_HOUR:I = 0xe10

.field static final TAG:Ljava/lang/String; = "PowerUsageSummary"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Ljava/lang/String;

.field private mBatteryStatus:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

.field private mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

.field private mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mStatsType:I

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 97
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 441
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->updateBatteryStatus(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Landroid/preference/TwoStatePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 3

    .prologue
    .line 307
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 308
    .local v0, "notAvailable":Landroid/preference/Preference;
    const v1, 0x7f090782

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 309
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setHideLabels(Z)V

    .line 310
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 311
    return-void
.end method

.method private refreshStats()V
    .locals 30

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 332
    new-instance v24, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v27

    invoke-direct/range {v24 .. v27}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/content/Intent;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    invoke-virtual/range {v24 .. v25}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    invoke-virtual/range {v24 .. v25}, Landroid/preference/TwoStatePreference;->setOrder(I)V

    .line 346
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 347
    const/4 v4, 0x0

    .line 349
    .local v4, "addedSome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v13

    .line 350
    .local v13, "powerProfile":Lcom/android/internal/os/PowerProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v21

    .line 351
    .local v21, "stats":Landroid/os/BatteryStats;
    const-string v24, "screen.full"

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 353
    .local v6, "averagePower":D
    const-wide/16 v24, 0x0

    cmpl-double v24, v6, v24

    if-ltz v24, :cond_7

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v19

    .line 356
    .local v19, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v22

    .line 361
    .local v22, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v24, v0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v9

    .line 363
    .local v9, "dischargeAmount":I
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v12

    .line 365
    .local v12, "numSippers":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v12, :cond_7

    .line 366
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatterySipper;

    .line 367
    .local v20, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v24, v0

    const-wide v26, 0x40ac200000000000L    # 3600.0

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x4014000000000000L    # 5.0

    cmpg-double v24, v24, v26

    if-gez v24, :cond_3

    .line 365
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 361
    .end local v9    # "dischargeAmount":I
    .end local v11    # "i":I
    .end local v12    # "numSippers":I
    .end local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 370
    .restart local v9    # "dischargeAmount":I
    .restart local v11    # "i":I
    .restart local v12    # "numSippers":I
    .restart local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_3
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v26

    div-double v24, v24, v26

    int-to-double v0, v9

    move-wide/from16 v26, v0

    mul-double v16, v24, v26

    .line 372
    .local v16, "percentOfTotal":D
    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    add-double v24, v24, v16

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_1

    .line 375
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 380
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v26

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4008000000000000L    # 3.0

    div-double v26, v26, v28

    cmpg-double v24, v24, v26

    if-ltz v24, :cond_1

    .line 383
    const-wide/high16 v24, 0x4024000000000000L    # 10.0

    cmpg-double v24, v16, v24

    if-ltz v24, :cond_1

    .line 386
    const-string v24, "user"

    sget-object v25, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 390
    :cond_4
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v24, v0

    sget-object v25, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 395
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v26

    const-wide/high16 v28, 0x4000000000000000L    # 2.0

    div-double v26, v26, v28

    cmpg-double v24, v24, v26

    if-ltz v24, :cond_1

    .line 398
    const-wide/high16 v24, 0x4014000000000000L    # 5.0

    cmpg-double v24, v16, v24

    if-ltz v24, :cond_1

    .line 401
    const-string v24, "user"

    sget-object v25, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 405
    :cond_5
    new-instance v23, Landroid/os/UserHandle;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v24

    invoke-static/range {v24 .. v24}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v24

    invoke-direct/range {v23 .. v24}, Landroid/os/UserHandle;-><init>(I)V

    .line 407
    .local v23, "userHandle":Landroid/os/UserHandle;
    new-instance v10, Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 409
    .local v10, "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v24, v0

    invoke-virtual {v10}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 411
    .local v5, "badgedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v24, v0

    invoke-virtual {v10}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 413
    .local v8, "contentDescription":Ljava/lang/CharSequence;
    new-instance v18, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5, v8, v10}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings_ex/fuelgauge/BatteryEntry;)V

    .line 416
    .local v18, "pref":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->value:D

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4059000000000000L    # 100.0

    mul-double v24, v24, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v26

    div-double v14, v24, v26

    .line 418
    .local v14, "percentOfMax":D
    move-wide/from16 v0, v16

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 419
    invoke-virtual {v10}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 420
    add-int/lit8 v24, v11, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 421
    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 422
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    .line 423
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 425
    :cond_6
    const/4 v4, 0x1

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v24

    const/16 v25, 0xb

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 432
    .end local v5    # "badgedIcon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "contentDescription":Ljava/lang/CharSequence;
    .end local v9    # "dischargeAmount":I
    .end local v10    # "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    .end local v11    # "i":I
    .end local v12    # "numSippers":I
    .end local v14    # "percentOfMax":D
    .end local v16    # "percentOfTotal":D
    .end local v18    # "pref":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    .end local v19    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    .end local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v22    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .end local v23    # "userHandle":Landroid/os/UserHandle;
    :cond_7
    if-nez v4, :cond_8

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 436
    :cond_8
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 437
    return-void
.end method

.method private updateBatteryStatus(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 314
    if-eqz p1, :cond_1

    .line 315
    invoke-static {p1}, Lcom/android/settings_ex/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "batteryLevel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/settings_ex/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "batteryStatus":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryLevel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 321
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryLevel:Ljava/lang/String;

    .line 322
    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryStatus:Ljava/lang/String;

    .line 323
    const/4 v2, 0x1

    .line 326
    .end local v0    # "batteryLevel":Ljava/lang/String;
    .end local v1    # "batteryStatus":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 114
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    .line 115
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 116
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 123
    const v1, 0x7f06004d

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 124
    const-string v1, "app_list"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mActivity:Landroid/app/Activity;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    .line 129
    new-instance v1, Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

    const-string v4, "enable_show_statusbar"

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setKey(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090b91

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

    invoke-virtual {v1, p0}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "status_bar_show_battery_percent"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 140
    .local v0, "isStatusShow":I
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 142
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

    new-instance v2, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 171
    return-void

    :cond_0
    move v1, v3

    .line 140
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x0

    .line 260
    const/4 v4, 0x2

    const v5, 0x7f0907da

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x1080404

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x72

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v3

    .line 264
    .local v3, "refresh":Landroid/view/MenuItem;
    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 267
    const/4 v4, 0x3

    const v5, 0x7f0907dd

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 269
    .local v0, "batterySaver":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090a1f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "helpUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 274
    const/4 v4, 0x4

    const v5, 0x7f090a18

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 276
    .local v1, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 278
    .end local v1    # "help":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->storeState()V

    .line 215
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 216
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 282
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 302
    :goto_0
    return v6

    .line 284
    :pswitch_0
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    .line 285
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 289
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v6, v7

    .line 290
    goto :goto_0

    .line 287
    :cond_0
    iput v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 292
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 293
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 294
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    move v6, v7

    .line 295
    goto :goto_0

    .line 297
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 298
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0907dd

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v6, v7

    .line 300
    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 200
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 476
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable_show_statusbar"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/TwoStatePreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 480
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "KEY_ENABLE_SHOW_STATUSBAR is Checked !"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "status_bar_show_battery_percent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 497
    :goto_0
    return v0

    .line 487
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "KEY_ENABLE_SHOW_STATUSBAR is unChecked !"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_bar_show_battery_percent"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 497
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 221
    instance-of v2, p2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    if-eqz v2, :cond_0

    .line 239
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    .line 249
    :goto_0
    return v2

    .line 241
    :cond_0
    instance-of v2, p2, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    if-nez v2, :cond_1

    .line 242
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v1, p2

    .line 244
    check-cast v1, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    .line 245
    .local v1, "pgp":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    invoke-virtual {v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    move-result-object v0

    .line 246
    .local v0, "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings_ex/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings_ex/fuelgauge/BatteryEntry;Z)V

    .line 249
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 182
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tmp_bat_history.bin"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->updateBatteryStatus(Landroid/content/Intent;)Z

    .line 187
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 192
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 176
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 178
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 205
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    return-void
.end method
