.class public Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings_ex/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"


# static fields
.field private static final BATTERY_BAR_STYLE:I = 0x0

.field private static final BATTERY_CIRCLE_STYLE:I = 0x1

.field private static final BATTERY_HIDDEN_STYLE:I = 0x2

.field private static final DEBUG:Z = false

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_BATTERY_HISTORY:Ljava/lang/String; = "battery_history"

.field private static final KEY_ENABLE_SHOW_STATUSBAR:Ljava/lang/String; = "enable_show_statusbar"

.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MENU_BATTERY_SAVER:I = 0x3

.field private static final MENU_BATTERY_STYLE:I = 0x6

.field private static final MENU_HELP:I = 0xa

.field private static final MENU_HIGH_POWER_APPS:I = 0x4

.field private static final MENU_HIGH_POWER_APPS_MANAGER:I = 0x5

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_AVERAGE_POWER_THRESHOLD_MILLI_AMP:I = 0xa

.field private static final MIN_POWER_THRESHOLD_MILLI_AMP:I = 0x5

.field private static final SECONDS_IN_HOUR:I = 0xe10

.field private static final SHOW_POWER_PERCENT_IN_STATUSBAR_TITLE:Ljava/lang/String; = "show_power_percent_in_statusbar_title"

.field private static final SUBMENU_BATTERY_BAR:I = 0x7

.field private static final SUBMENU_BATTERY_CIRCLE:I = 0x8

.field private static final SUBMENU_BATTERY_HIDDEN:I = 0x9

.field static final TAG:Ljava/lang/String; = "PowerUsageSummary"

.field private static final USE_FAKE_DATA:Z


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

.field private mPowerStatusBarEnable:Landroid/preference/SwitchPreference;

.field private mStatsType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 556
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 321
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 322
    .local v0, "notAvailable":Landroid/preference/Preference;
    const v1, 0x7f0c08ec

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 323
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 324
    return-void
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
    .line 341
    .local p0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 343
    .local v16, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v14, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    .line 345
    .local v11, "numSippers":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_a

    .line 346
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    .line 347
    .local v15, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    if-lez v17, :cond_9

    .line 348
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    .line 352
    .local v13, "realUid":I
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->isSharedGid(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 353
    const/16 v17, 0x0

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 358
    :cond_0
    invoke-static {v13}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->isSystemUid(I)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v17, "mediaserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 363
    const/16 v13, 0x3e8

    .line 366
    :cond_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    .line 368
    new-instance v10, Lcom/android/internal/os/BatterySipper;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/settings_ex/fuelgauge/FakeUid;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 370
    .local v10, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v10, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 371
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 372
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 373
    move-object v15, v10

    .line 376
    .end local v10    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 377
    .local v7, "index":I
    if-gez v7, :cond_4

    .line 379
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 382
    .restart local v7    # "index":I
    .restart local v13    # "realUid":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 383
    .local v5, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 384
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 386
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 389
    :cond_5
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 391
    .local v4, "existingPackageLen":I
    :goto_2
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .line 393
    .local v8, "newPackageLen":I
    :goto_3
    if-lez v8, :cond_3

    .line 394
    add-int v17, v4, v8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 395
    .local v9, "newPackages":[Ljava/lang/String;
    if-lez v4, :cond_6

    .line 396
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    :cond_6
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    iput-object v9, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_1

    .line 389
    .end local v4    # "existingPackageLen":I
    .end local v8    # "newPackageLen":I
    .end local v9    # "newPackages":[Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 391
    .restart local v4    # "existingPackageLen":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 405
    .end local v4    # "existingPackageLen":I
    .end local v5    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_9
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 409
    .end local v15    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 410
    .local v12, "numUidSippers":I
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_b

    .line 411
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 415
    :cond_b
    new-instance v17, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 421
    return-object v14
.end method

.method private static getFakeStats()Ljava/util/List;
    .locals 15
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
    const/16 v14, 0x2710

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    .line 524
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 525
    .local v4, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    const/high16 v6, 0x40a00000    # 5.0f

    .line 526
    .local v6, "use":F
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/os/BatterySipper$DrainType;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 527
    .local v5, "type":Lcom/android/internal/os/BatterySipper$DrainType;
    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v7, :cond_0

    .line 526
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    :cond_0
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    const/4 v8, 0x0

    float-to-double v10, v6

    invoke-direct {v7, v5, v8, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    const/high16 v7, 0x40a00000    # 5.0f

    add-float/2addr v6, v7

    goto :goto_1

    .line 533
    .end local v5    # "type":Lcom/android/internal/os/BatterySipper$DrainType;
    :cond_1
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/settings_ex/fuelgauge/FakeUid;

    invoke-direct {v9, v14}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v10, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/settings_ex/fuelgauge/FakeUid;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v10, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    new-instance v3, Lcom/android/internal/os/BatterySipper;

    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v8, Lcom/android/settings_ex/fuelgauge/FakeUid;

    invoke-static {v14}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    invoke-direct {v3, v7, v8, v12, v13}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 541
    .local v3, "sipper":Lcom/android/internal/os/BatterySipper;
    const-string v7, "dex2oat"

    iput-object v7, v3, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 542
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v3, Lcom/android/internal/os/BatterySipper;

    .end local v3    # "sipper":Lcom/android/internal/os/BatterySipper;
    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v8, Lcom/android/settings_ex/fuelgauge/FakeUid;

    const/16 v9, 0x2711

    invoke-static {v9}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    invoke-direct {v3, v7, v8, v12, v13}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 546
    .restart local v3    # "sipper":Lcom/android/internal/os/BatterySipper;
    const-string v7, "dex2oat"

    iput-object v7, v3, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 547
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    new-instance v3, Lcom/android/internal/os/BatterySipper;

    .end local v3    # "sipper":Lcom/android/internal/os/BatterySipper;
    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v8, Lcom/android/settings_ex/fuelgauge/FakeUid;

    const/16 v9, 0x3ef

    invoke-static {v9}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    invoke-direct {v3, v7, v8, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 551
    .restart local v3    # "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    return-object v4
.end method

.method private getHighPowerAppsTitle()I
    .locals 2

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->isSupportBackgroundManagerment()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    const v0, 0x7f0c00d8

    .line 204
    .local v0, "highPowerAppsTitle":I
    :goto_0
    return v0

    .line 202
    .end local v0    # "highPowerAppsTitle":I
    :cond_0
    const v0, 0x7f0c0d1f

    .restart local v0    # "highPowerAppsTitle":I
    goto :goto_0
.end method

.method private static isSharedGid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 327
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupportBackgroundManagerment()Z
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.background.control"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 331
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 250
    const v0, 0x7f0c0b9d

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0x36

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v3, 0x7f080049

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 119
    const-string v3, "battery_history"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    .line 120
    const-string v3, "app_list"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    .line 124
    const-string v3, "enable_show_statusbar"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/SwitchPreference;

    .line 125
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "status_bar_show_battery_percent"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 127
    .local v1, "isStatusShow":I
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/SwitchPreference;

    if-ne v1, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 128
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/SwitchPreference;

    new-instance v5, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    invoke-virtual {v3, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    .line 144
    .local v2, "showPowerPercentInStatusBar":Z
    if-eqz v0, :cond_0

    const-string v3, "show_power_percent_in_statusbar_title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const-string v3, "show_power_percent_in_statusbar_title"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 146
    if-nez v2, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    :cond_0
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "showPowerPercentInStatusBar":Z
    :cond_1
    move v3, v5

    .line 127
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 12
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 220
    const v6, 0x7f0c094d

    invoke-interface {p1, v8, v11, v8, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 221
    .local v2, "batterySaver":Landroid/view/MenuItem;
    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 222
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getHighPowerAppsTitle()I

    move-result v4

    .line 223
    .local v4, "highPowerAppsTitle":I
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v6

    if-eqz v6, :cond_0

    new-array v6, v7, [I

    aput v7, v6, v8

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    :cond_0
    const/4 v6, 0x4

    invoke-interface {p1, v8, v6, v8, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 226
    :cond_1
    const/4 v6, 0x5

    const v9, 0x7f0c01d2

    invoke-interface {p1, v8, v6, v8, v9}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "status_bar_battery_style"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 231
    .local v5, "selectedStyle":I
    const/4 v6, 0x6

    const v9, 0x7f0c0067

    invoke-interface {p1, v7, v6, v7, v9}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v3

    .line 233
    .local v3, "batteryStyle":Landroid/view/SubMenu;
    const/4 v6, 0x7

    const v9, 0x7f0c0068

    invoke-interface {v3, v7, v6, v7, v9}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    if-nez v5, :cond_3

    move v6, v7

    :goto_0
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 235
    const/16 v6, 0x8

    const v9, 0x7f0c0069

    invoke-interface {v3, v7, v6, v10, v9}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    if-ne v5, v7, :cond_4

    move v6, v7

    :goto_1
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 237
    const/16 v6, 0x9

    const v9, 0x7f0c006b

    invoke-interface {v3, v7, v6, v11, v9}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    if-ne v5, v10, :cond_2

    move v8, v7

    :cond_2
    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 239
    invoke-interface {v3, v7, v7, v7}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 241
    invoke-interface {v3}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    .line 242
    .local v1, "batteryIcon":Landroid/view/MenuItem;
    iget-object v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    const v7, 0x7f0200f0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    .local v0, "batteryDrawable":Landroid/graphics/drawable/Drawable;
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 245
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 246
    return-void

    .end local v0    # "batteryDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "batteryIcon":Landroid/view/MenuItem;
    :cond_3
    move v6, v8

    .line 233
    goto :goto_0

    :cond_4
    move v6, v8

    .line 235
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 177
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->storeState()V

    .line 181
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 182
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 256
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const/4 v8, 0x0

    .line 257
    .local v8, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 316
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 259
    :pswitch_1
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    .line 260
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 264
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 265
    const/4 v1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 267
    :pswitch_2
    const-class v1, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c094d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 269
    const/4 v1, 0x1

    goto :goto_0

    .line 272
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->isSupportBackgroundManagerment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.oneplus.security.action.cleanbackground"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v8    # "intent":Landroid/content/Intent;
    .local v9, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v8, v9

    .line 287
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 276
    :catch_0
    move-exception v7

    .line 277
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    :goto_3
    const-string v1, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 280
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "classname"

    const-class v3, Lcom/android/settings_ex/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0d1f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 291
    .end local v2    # "args":Landroid/os/Bundle;
    :pswitch_4
    :try_start_2
    new-instance v9, Landroid/content/Intent;

    const-string v1, "com.oneplus.security.action.HIGH_POWER_APP"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 292
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "intent":Landroid/content/Intent;
    :try_start_3
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v8, v9

    .line 296
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    :goto_4
    const/4 v1, 0x1

    goto :goto_0

    .line 293
    :catch_1
    move-exception v7

    .line 294
    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    :goto_5
    const-string v1, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 300
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_5
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 301
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "status_bar_battery_style"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 305
    :pswitch_6
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 306
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "status_bar_battery_style"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 310
    :pswitch_7
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 311
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "status_bar_battery_style"

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 293
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v7

    move-object v8, v9

    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto :goto_5

    .line 276
    .end local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_3
    move-exception v7

    move-object v8, v9

    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v8    # "intent":Landroid/content/Intent;
    goto/16 :goto_3

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onPause()V

    .line 173
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 186
    instance-of v2, p2, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    if-nez v2, :cond_0

    .line 187
    const/4 v2, 0x0

    .line 193
    :goto_0
    return v2

    :cond_0
    move-object v1, p2

    .line 189
    check-cast v1, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    .line 190
    .local v1, "pgp":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    invoke-virtual {v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    move-result-object v0

    .line 191
    .local v0, "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings_ex/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings_ex/fuelgauge/BatteryEntry;Z)V

    .line 193
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onResume()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 166
    return-void
.end method

.method protected refreshStats()V
    .locals 34

    .prologue
    .line 425
    invoke-super/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->updatePreference(Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;)V

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 429
    const/4 v4, 0x0

    .line 431
    .local v4, "addedSome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v18

    .line 432
    .local v18, "powerProfile":Lcom/android/internal/os/PowerProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v21

    .line 433
    .local v21, "stats":Landroid/os/BatteryStats;
    const-string v27, "screen.full"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 438
    .local v6, "averagePower":D
    new-instance v26, Landroid/util/TypedValue;

    invoke-direct/range {v26 .. v26}, Landroid/util/TypedValue;-><init>()V

    .line 439
    .local v26, "value":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v27

    const v28, 0x1010435

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v26

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 440
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    move-object/from16 v0, v26

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 443
    .local v8, "colorControl":I
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpl-double v27, v6, v28

    if-gez v27, :cond_2

    .line 516
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 520
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 521
    return-void

    .line 444
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v24

    .line 447
    .local v24, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v27, v0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v10

    .line 449
    .local v10, "dischargeAmount":I
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v13

    .line 450
    .local v13, "numSippers":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v13, :cond_0

    .line 451
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatterySipper;

    .line 452
    .local v20, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    const-wide v30, 0x40ac200000000000L    # 3600.0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    cmpg-double v27, v28, v30

    if-gez v27, :cond_5

    .line 450
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 447
    .end local v10    # "dischargeAmount":I
    .end local v12    # "i":I
    .end local v13    # "numSippers":I
    .end local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 455
    .restart local v10    # "dischargeAmount":I
    .restart local v12    # "i":I
    .restart local v13    # "numSippers":I
    .restart local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v22

    .line 456
    .local v22, "totalPower":D
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    div-double v28, v28, v22

    int-to-double v0, v10

    move-wide/from16 v30, v0

    mul-double v16, v28, v30

    .line 458
    .local v16, "percentOfTotal":D
    const-wide/high16 v28, 0x3fe0000000000000L    # 0.5

    add-double v28, v28, v16

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_3

    .line 461
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 464
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v30

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    mul-double v30, v30, v32

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    div-double v30, v30, v32

    cmpg-double v27, v28, v30

    if-ltz v27, :cond_3

    .line 467
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpg-double v27, v16, v28

    if-ltz v27, :cond_3

    .line 470
    const-string v27, "user"

    sget-object v28, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 474
    :cond_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 477
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v30

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    cmpg-double v27, v28, v30

    if-ltz v27, :cond_3

    .line 480
    const-wide/high16 v28, 0x4014000000000000L    # 5.0

    cmpg-double v27, v16, v28

    if-ltz v27, :cond_3

    .line 483
    const-string v27, "user"

    sget-object v28, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 487
    :cond_7
    new-instance v25, Landroid/os/UserHandle;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 488
    .local v25, "userHandle":Landroid/os/UserHandle;
    new-instance v11, Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v20

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 489
    .local v11, "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 491
    .local v5, "badgedIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    move-object/from16 v27, v0

    invoke-virtual {v11}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 493
    .local v9, "contentDescription":Ljava/lang/CharSequence;
    new-instance v19, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5, v9, v11}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings_ex/fuelgauge/BatteryEntry;)V

    .line 496
    .local v19, "pref":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    mul-double v28, v28, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v30

    div-double v14, v28, v30

    .line 498
    .local v14, "percentOfMax":D
    move-wide/from16 v0, v16

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 499
    invoke-virtual {v11}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 500
    add-int/lit8 v27, v12, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 501
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 502
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    .line 503
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 505
    :cond_8
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v27

    if-nez v27, :cond_a

    :cond_9
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_a

    .line 507
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setTint(I)V

    .line 509
    :cond_a
    const/4 v4, 0x1

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v27

    const/16 v28, 0xb

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_3

    goto/16 :goto_0
.end method
