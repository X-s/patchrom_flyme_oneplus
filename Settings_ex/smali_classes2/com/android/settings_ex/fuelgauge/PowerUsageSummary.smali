.class public Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings_ex/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"

# interfaces
.implements Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;,
        Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;,
        Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;,
        Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$GetDataTask;,
        Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_BATTERY_HISTORY:Ljava/lang/String; = "battery_history"

.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MENU_HELP:I = 0x6

.field private static final MENU_HIGH_POWER_APPS:I = 0x4

.field private static final MENU_HIGH_POWER_APPS_MANAGER:I = 0x5

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_AVERAGE_POWER_THRESHOLD_MILLI_AMP:I = 0xa

.field private static final MIN_POWER_THRESHOLD_MILLI_AMP:I = 0x5

.field private static final MSG_INTERVAL:I = 0x2710

.field private static final MSG_UPDATE:I = 0x3e8

.field private static final OP_BACKGROYUND_OPTIMIZE:Ljava/lang/String; = "op_backgroyund_optimize"

.field private static final SECONDS_IN_HOUR:I = 0xe10

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field static final TAG:Ljava/lang/String; = "PowerUsageSummary"

.field private static final USE_FAKE_DATA:Z


# instance fields
.field private mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mForceCloseListener:Landroid/view/View$OnClickListener;

.field mHandler:Landroid/os/Handler;

.field private mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

.field private mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

.field private mPauseUpdate:Z

.field private mStatsType:I


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPauseUpdate:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->nextUpdate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;Landroid/os/BatteryStats;)V
    .locals 0
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->rebind(Landroid/os/BatteryStats;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 787
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;-><init>()V

    .line 786
    sput-object v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 409
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mForceCloseListener:Landroid/view/View$OnClickListener;

    .line 701
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 3

    .prologue
    .line 295
    const-string/jumbo v0, "not_available"

    .line 296
    .local v0, "NOT_AVAILABLE":Ljava/lang/String;
    const-string/jumbo v2, "not_available"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 297
    .local v1, "notAvailable":Landroid/support/v7/preference/Preference;
    if-nez v1, :cond_0

    .line 298
    new-instance v1, Landroid/support/v7/preference/Preference;

    .end local v1    # "notAvailable":Landroid/support/v7/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 299
    .restart local v1    # "notAvailable":Landroid/support/v7/preference/Preference;
    const-string/jumbo v2, "not_available"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 300
    const v2, 0x7f0e0b2d

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 301
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 294
    :cond_0
    return-void
.end method

.method private concatHighPowerApp(Ljava/util/List;Landroid/os/BatteryStats;)Ljava/util/List;
    .locals 18
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Landroid/os/BatteryStats;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez p1, :cond_0

    .line 433
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .restart local p1    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 437
    .local v12, "uids":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "sipper$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 438
    .local v6, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    .end local v6    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz v13, :cond_7

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v13}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object v5

    .line 442
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    if-eqz v5, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 444
    if-eqz p2, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v4

    .line 445
    .local v4, "dischargeAmount":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v13}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v8

    .line 446
    .local v8, "totalPower":D
    if-eqz v4, :cond_2

    const-wide/16 v14, 0x0

    cmpl-double v13, v14, v8

    if-nez v13, :cond_5

    :cond_2
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 448
    .local v10, "totalPowerMah":D
    :goto_2
    const-string/jumbo v13, "PowerUsageSummary"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "concatHighPowerApp list.size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "app$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 450
    .local v2, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    iget v13, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 451
    const-string/jumbo v13, "PowerUsageSummary"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "concatHighPowerApp add pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v6, Lcom/android/internal/os/BatterySipper;

    sget-object v13, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v14, Lcom/android/settings_ex/fuelgauge/FakeUid;

    iget v15, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-direct {v14, v15}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    invoke-direct {v6, v13, v14, v0, v1}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 453
    .restart local v6    # "sipper":Lcom/android/internal/os/BatterySipper;
    iput-wide v10, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 454
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 444
    .end local v2    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .end local v3    # "app$iterator":Ljava/util/Iterator;
    .end local v4    # "dischargeAmount":I
    .end local v6    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v8    # "totalPower":D
    .end local v10    # "totalPowerMah":D
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "dischargeAmount":I
    goto/16 :goto_1

    .line 446
    .restart local v8    # "totalPower":D
    :cond_5
    int-to-double v14, v4

    const-wide v16, 0x3fe3333333333333L    # 0.6

    div-double v14, v16, v14

    mul-double v10, v14, v8

    .restart local v10    # "totalPowerMah":D
    goto/16 :goto_2

    .line 456
    .restart local v2    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .restart local v3    # "app$iterator":Ljava/util/Iterator;
    :cond_6
    const-string/jumbo v13, "PowerUsageSummary"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "concatHighPowerApp exist pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget v13, v2, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 458
    .restart local v6    # "sipper":Lcom/android/internal/os/BatterySipper;
    iget-wide v14, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpg-double v13, v14, v10

    if-gez v13, :cond_3

    .line 459
    iput-wide v10, v6, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    goto/16 :goto_3

    .line 466
    .end local v2    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .end local v3    # "app$iterator":Ljava/util/Iterator;
    .end local v4    # "dischargeAmount":I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v6    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v8    # "totalPower":D
    .end local v10    # "totalPowerMah":D
    :cond_7
    return-object p1
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    .local p0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 322
    .local v16, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v14, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    .line 324
    .local v11, "numSippers":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_b

    .line 325
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    .line 326
    .local v15, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    if-lez v17, :cond_a

    .line 327
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    .line 331
    .local v13, "realUid":I
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->isSharedGid(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 333
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v17

    .line 332
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 337
    :cond_0
    invoke-static {v13}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->isSystemUid(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 338
    const-string/jumbo v17, "mediaserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 345
    :cond_1
    :goto_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    .line 347
    new-instance v10, Lcom/android/internal/os/BatterySipper;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v17, v0

    .line 348
    new-instance v18, Lcom/android/settings_ex/fuelgauge/FakeUid;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v20, 0x0

    .line 347
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 349
    .local v10, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v10, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 350
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 351
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 352
    move-object v15, v10

    .line 355
    .end local v10    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 356
    .local v7, "index":I
    if-gez v7, :cond_5

    .line 358
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 342
    .restart local v13    # "realUid":I
    :cond_4
    const/16 v13, 0x3e8

    goto :goto_1

    .line 361
    .restart local v7    # "index":I
    :cond_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 362
    .local v5, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 363
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 364
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 365
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 368
    :cond_6
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 369
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 370
    .local v4, "existingPackageLen":I
    :goto_3
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 371
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .line 372
    .local v8, "newPackageLen":I
    :goto_4
    if-lez v8, :cond_3

    .line 373
    add-int v17, v4, v8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 374
    .local v9, "newPackages":[Ljava/lang/String;
    if-lez v4, :cond_7

    .line 375
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    :cond_7
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    iput-object v9, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_2

    .line 369
    .end local v4    # "existingPackageLen":I
    .end local v8    # "newPackageLen":I
    .end local v9    # "newPackages":[Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "existingPackageLen":I
    goto :goto_3

    .line 371
    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 384
    .end local v4    # "existingPackageLen":I
    .end local v5    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_a
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 388
    .end local v15    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 389
    .local v12, "numUidSippers":I
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v12, :cond_c

    .line 390
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 394
    :cond_c
    new-instance v17, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$4;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$4;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 400
    return-object v14
.end method

.method private static getFakeStats()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x2710

    const/4 v6, 0x0

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    .line 667
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v2, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    const/high16 v4, 0x40a00000    # 5.0f

    .line 669
    .local v4, "use":F
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v7

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_1

    aget-object v3, v7, v5

    .line 670
    .local v3, "type":Lcom/android/internal/os/BatterySipper$DrainType;
    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v3, v9, :cond_0

    .line 669
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 673
    :cond_0
    new-instance v9, Lcom/android/internal/os/BatterySipper;

    float-to-double v10, v4

    const/4 v12, 0x0

    invoke-direct {v9, v3, v12, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    const/high16 v9, 0x40a00000    # 5.0f

    add-float/2addr v4, v9

    goto :goto_1

    .line 676
    .end local v3    # "type":Lcom/android/internal/os/BatterySipper$DrainType;
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v5, 0x64

    if-ge v0, v5, :cond_2

    .line 677
    new-instance v5, Lcom/android/internal/os/BatterySipper;

    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 678
    new-instance v8, Lcom/android/settings_ex/fuelgauge/FakeUid;

    add-int/lit16 v9, v0, 0x2710

    invoke-direct {v8, v9}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v10, v4

    .line 677
    invoke-direct {v5, v7, v8, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 680
    :cond_2
    new-instance v5, Lcom/android/internal/os/BatterySipper;

    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 681
    new-instance v8, Lcom/android/settings_ex/fuelgauge/FakeUid;

    invoke-direct {v8, v6}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v10, v4

    .line 680
    invoke-direct {v5, v7, v8, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    new-instance v1, Lcom/android/internal/os/BatterySipper;

    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 685
    new-instance v6, Lcom/android/settings_ex/fuelgauge/FakeUid;

    invoke-static {v13}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    .line 684
    invoke-direct {v1, v5, v6, v14, v15}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 686
    .local v1, "sipper":Lcom/android/internal/os/BatterySipper;
    const-string/jumbo v5, "dex2oat"

    iput-object v5, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 687
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    new-instance v1, Lcom/android/internal/os/BatterySipper;

    .end local v1    # "sipper":Lcom/android/internal/os/BatterySipper;
    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 690
    new-instance v6, Lcom/android/settings_ex/fuelgauge/FakeUid;

    const/16 v7, 0x2711

    invoke-static {v7}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    .line 689
    invoke-direct {v1, v5, v6, v14, v15}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 691
    .restart local v1    # "sipper":Lcom/android/internal/os/BatterySipper;
    const-string/jumbo v5, "dex2oat"

    iput-object v5, v1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 692
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance v1, Lcom/android/internal/os/BatterySipper;

    .end local v1    # "sipper":Lcom/android/internal/os/BatterySipper;
    sget-object v5, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 695
    new-instance v6, Lcom/android/settings_ex/fuelgauge/FakeUid;

    const/16 v7, 0x3ef

    invoke-static {v7}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    const-wide/high16 v8, 0x4022000000000000L    # 9.0

    .line 694
    invoke-direct {v1, v5, v6, v8, v9}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 696
    .restart local v1    # "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    return-object v2
.end method

.method private getHighPowerAppsTitle()I
    .locals 2

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->isSupportBackgroundManagerment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    const v0, 0x7f0e0224

    .line 216
    .local v0, "highPowerAppsTitle":I
    :goto_0
    return v0

    .line 214
    .end local v0    # "highPowerAppsTitle":I
    :cond_0
    const v0, 0x7f0e0f34

    .restart local v0    # "highPowerAppsTitle":I
    goto :goto_0
.end method

.method private static isSharedGid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 306
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSupportBackgroundManagerment()Z
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.background.control"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 310
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private nextUpdate()V
    .locals 4

    .prologue
    .line 425
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 427
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 424
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private rebind(Landroid/os/BatteryStats;)V
    .locals 36
    .param p1, "stats"    # Landroid/os/BatteryStats;

    .prologue
    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->updatePreference(Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 527
    const/4 v6, 0x0

    .line 528
    .local v6, "addedSome":Z
    if-eqz p1, :cond_13

    .line 531
    sget-object v30, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v31, 0x7f0b0390

    invoke-virtual/range {v30 .. v31}, Landroid/app/Application;->getColor(I)I

    move-result v10

    .line 536
    .local v10, "colorControl":I
    new-instance v30, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 535
    invoke-static/range {v30 .. v30}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v28

    .line 537
    .local v28, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getCachedCount()I

    move-result v31

    sub-int v30, v30, v31

    .line 538
    const/16 v31, 0xb

    .line 537
    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_0

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getCachedCount()I

    move-result v30

    rsub-int/lit8 v30, v30, 0xb

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v28

    .line 541
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v30

    if-nez v30, :cond_1

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->concatHighPowerApp(Ljava/util/List;Landroid/os/BatteryStats;)Ljava/util/List;

    move-result-object v28

    .line 544
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 545
    .local v8, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;>;"
    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    .line 546
    .local v26, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v30

    if-nez v30, :cond_3

    .line 547
    :cond_2
    return-void

    .line 546
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/app/Activity;->isFinishing()Z

    move-result v30

    if-nez v30, :cond_2

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object v16

    .line 550
    .local v16, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v30

    move/from16 v0, v30

    if-ge v14, v0, :cond_4

    .line 551
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 552
    .local v7, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    iget v0, v7, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 554
    .end local v7    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v30

    const v31, 0x7f0e033f

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 558
    .local v27, "uninstalled":Ljava/lang/String;
    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v12

    .line 559
    .local v12, "dischargeAmount":I
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v17

    .line 560
    .local v17, "numSippers":I
    const/4 v14, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_12

    .line 561
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/internal/os/BatterySipper;

    .line 563
    .local v23, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    const-wide v32, 0x40ac200000000000L    # 3600.0

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4014000000000000L    # 5.0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_5

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_7

    .line 567
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v24

    .line 569
    .local v24, "totalPower":D
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    div-double v30, v30, v24

    int-to-double v0, v12

    move-wide/from16 v32, v0

    mul-double v20, v30, v32

    .line 571
    .local v20, "percentOfTotal":D
    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v20

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    .line 572
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    .line 575
    :cond_6
    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v20

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ge v0, v1, :cond_9

    .line 560
    .end local v20    # "percentOfTotal":D
    .end local v24    # "totalPower":D
    :cond_7
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 558
    .end local v12    # "dischargeAmount":I
    .end local v17    # "numSippers":I
    .end local v23    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_8
    const/4 v12, 0x0

    .restart local v12    # "dischargeAmount":I
    goto/16 :goto_1

    .line 578
    .restart local v17    # "numSippers":I
    .restart local v20    # "percentOfTotal":D
    .restart local v23    # "sipper":Lcom/android/internal/os/BatterySipper;
    .restart local v24    # "totalPower":D
    :cond_9
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_a

    .line 581
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v32, v32, v34

    const-wide/high16 v34, 0x4008000000000000L    # 3.0

    div-double v32, v32, v34

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_7

    .line 584
    const-wide/high16 v30, 0x4024000000000000L    # 10.0

    cmpg-double v30, v20, v30

    if-ltz v30, :cond_7

    .line 587
    const-string/jumbo v30, "user"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 591
    :cond_a
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_b

    .line 594
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v32

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    cmpg-double v30, v30, v32

    if-ltz v30, :cond_7

    .line 597
    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    cmpg-double v30, v20, v30

    if-ltz v30, :cond_7

    .line 600
    const-string/jumbo v30, "user"

    sget-object v31, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_7

    .line 604
    :cond_b
    new-instance v29, Landroid/os/UserHandle;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v30

    invoke-direct/range {v29 .. v30}, Landroid/os/UserHandle;-><init>(I)V

    .line 605
    .local v29, "userHandle":Landroid/os/UserHandle;
    new-instance v13, Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v23

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 606
    .local v13, "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 608
    .local v9, "badgedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v30, v0

    invoke-virtual {v13}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 610
    .local v11, "contentDescription":Ljava/lang/CharSequence;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_11

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_10

    .line 611
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 614
    .local v15, "key":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v22

    check-cast v22, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    .line 615
    .local v22, "pref":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    if-nez v22, :cond_c

    .line 616
    new-instance v22, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    .end local v22    # "pref":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v9, v11, v13}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings_ex/fuelgauge/BatteryEntry;)V

    .line 618
    .restart local v22    # "pref":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 621
    :cond_c
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    mul-double v30, v30, v32

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v32

    .line 621
    div-double v18, v30, v32

    .line 623
    .local v18, "percentOfMax":D
    move-wide/from16 v0, v20

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 624
    invoke-virtual {v13}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 625
    add-int/lit8 v30, v14, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 626
    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mForceCloseListener:Landroid/view/View$OnClickListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 629
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v30, v0

    if-eqz v30, :cond_d

    .line 632
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 634
    :cond_d
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_e

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v30

    if-nez v30, :cond_f

    .line 635
    :cond_e
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_f

    .line 636
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setTint(I)V

    .line 638
    :cond_f
    const/4 v6, 0x1

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 640
    const-string/jumbo v30, "PowerUsageSummary"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "rebind addPreference i= "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", name="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual {v13}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ", totalPowerMah="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v30

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getCachedCount()I

    move-result v31

    sub-int v30, v30, v31

    .line 642
    const/16 v31, 0xb

    .line 641
    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_7

    goto/16 :goto_3

    .line 612
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "percentOfMax":D
    .end local v22    # "pref":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    :cond_10
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 613
    :cond_11
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_4

    .line 649
    .end local v9    # "badgedIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "contentDescription":Ljava/lang/CharSequence;
    .end local v13    # "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    .end local v20    # "percentOfTotal":D
    .end local v23    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v24    # "totalPower":D
    .end local v29    # "userHandle":Landroid/os/UserHandle;
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->setPowerState(Ljava/util/Map;)V

    .line 653
    .end local v8    # "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;>;"
    .end local v10    # "colorControl":I
    .end local v12    # "dischargeAmount":I
    .end local v14    # "i":I
    .end local v16    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v17    # "numSippers":I
    .end local v26    # "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v27    # "uninstalled":Ljava/lang/String;
    .end local v28    # "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_13
    if-nez v6, :cond_14

    .line 654
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 656
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 657
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 523
    return-void
.end method

.method private setPowerState(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "apps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;>;"
    if-nez p1, :cond_0

    .line 471
    return-void

    .line 474
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pref$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    .line 475
    .local v3, "pref":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setState(I)V

    goto :goto_0

    .line 477
    .end local v3    # "pref":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz v5, :cond_3

    .line 478
    iget-object v5, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v5}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->getDataList()Ljava/util/List;

    move-result-object v2

    .line 479
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 480
    const-string/jumbo v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPowerState list.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;

    .line 482
    .local v0, "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    iget v5, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 483
    const-string/jumbo v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPowerState pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/settings/backgroundoptimize/Logutil;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget v5, v0, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    .line 485
    .restart local v3    # "pref":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    invoke-virtual {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerApp;->getState()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setState(I)V

    goto :goto_1

    .line 469
    .end local v0    # "app":Lcom/oneplus/settings/highpowerapp/HighPowerApp;
    .end local v1    # "app$iterator":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/settings/highpowerapp/HighPowerApp;>;"
    .end local v3    # "pref":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    :cond_3
    return-void
.end method


# virtual methods
.method public OnDataChanged()V
    .locals 0

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 405
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 243
    const v0, 0x7f0e0d7c

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 142
    const/16 v0, 0x36

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0, v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->setAnimationAllowed(Z)V

    .line 117
    const v2, 0x7f080067

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 118
    const-string/jumbo v2, "battery_history"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    iput-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    .line 119
    const-string/jumbo v2, "app_list"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 122
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    const-string/jumbo v2, "op_backgroyund_optimize"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->removePreference(Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance v2, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;-><init>(Landroid/content/Context;Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    iput-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "tracker_event"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 131
    .local v1, "trackerEvent":I
    if-ne v1, v5, :cond_1

    .line 132
    const-string/jumbo v2, "widget_power"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "trackerEvent":I
    :cond_1
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 232
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getHighPowerAppsTitle()I

    move-result v0

    .line 233
    .local v0, "highPowerAppsTitle":I
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 224
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 172
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->releaseResource()V

    .line 177
    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    .line 170
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 250
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const/4 v8, 0x0

    .line 252
    .local v8, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 290
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 254
    :pswitch_1
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    .line 255
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 259
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 260
    return v10

    .line 257
    :cond_0
    iput v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_0

    .line 263
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->isSupportBackgroundManagerment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.security.action.cleanbackground"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v8    # "intent":Landroid/content/Intent;
    .local v9, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v9

    .line 278
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_1
    return v10

    .line 267
    .restart local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 268
    .end local v8    # "intent":Landroid/content/Intent;
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    const-string/jumbo v1, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 271
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v8    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 272
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v1, "classname"

    .line 273
    const-class v3, Lcom/android/settings_ex/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 272
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 275
    const v3, 0x7f0e0f34

    move-object v5, v4

    .line 274
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 282
    .end local v2    # "args":Landroid/os/Bundle;
    :pswitch_3
    :try_start_2
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v1, "com.oneplus.security.action.HIGH_POWER_APP"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 283
    .restart local v9    # "intent":Landroid/content/Intent;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    .end local v8    # "intent":Landroid/content/Intent;
    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v8, v9

    .line 287
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_3
    return v10

    .line 284
    .restart local v8    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    .line 285
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    :goto_4
    const-string/jumbo v1, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 284
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v7

    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    move-object v8, v9

    .end local v9    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    goto :goto_4

    .line 267
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v7

    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    move-object v8, v9

    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 159
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 161
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onPause()V

    .line 163
    iput-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPauseUpdate:Z

    .line 164
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->unregisterObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 11
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 184
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 185
    .local v9, "key":Ljava/lang/String;
    const-string/jumbo v0, "op_backgroyund_optimize"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v7, 0x0

    .line 188
    .local v7, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.settings_ex.action.BACKGROUND_OPTIMIZE"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .local v8, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v0, "classname"

    .end local v7    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/Settings$BgOptimizeAppListActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 194
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_0
    return v4

    .line 191
    .restart local v7    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v6

    .line 192
    .end local v7    # "intent":Landroid/content/Intent;
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string/jumbo v0, "PowerUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No activity found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    instance-of v0, p1, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    if-nez v0, :cond_1

    .line 199
    invoke-super {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move-object v10, p1

    .line 201
    check-cast v10, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    .line 202
    .local v10, "pgp":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    invoke-virtual {v10}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    move-result-object v3

    .line 203
    .local v3, "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 204
    iget v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v5, v4

    .line 203
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings_ex/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings_ex/fuelgauge/BatteryEntry;ZZ)V

    .line 205
    invoke-super {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0

    .line 191
    .end local v3    # "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    .end local v10    # "pgp":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    .restart local v8    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v6

    .restart local v6    # "e":Landroid/content/ActivityNotFoundException;
    move-object v7, v8

    .end local v8    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onResume()V

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPauseUpdate:Z

    .line 151
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->registerObserver(Lcom/oneplus/settings/highpowerapp/IHighPowerAppObserver;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHighPowerAppModel:Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;

    invoke-virtual {v0}, Lcom/oneplus/settings/highpowerapp/HighPowerAppModel;->update()V

    .line 153
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->nextUpdate()V

    .line 146
    return-void
.end method

.method protected refreshStats()V
    .locals 3

    .prologue
    .line 661
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 662
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$GetDataTask;

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$GetDataTask;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;Lcom/android/internal/os/BatteryStatsHelper;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$GetDataTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 660
    return-void
.end method
