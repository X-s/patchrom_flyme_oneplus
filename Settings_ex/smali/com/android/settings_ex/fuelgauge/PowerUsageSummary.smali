.class public Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings_ex/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_BATTERY_HISTORY:Ljava/lang/String; = "battery_history"

.field private static final KEY_ENABLE_SHOW_STATUSBAR:Ljava/lang/String; = "enable_show_statusbar"

.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MENU_BATTERY_SAVER:I = 0x3

.field private static final MENU_HELP:I = 0x5

.field private static final MENU_HIGH_POWER_APPS:I = 0x4

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_AVERAGE_POWER_THRESHOLD_MILLI_AMP:I = 0xa

.field private static final MIN_POWER_THRESHOLD_MILLI_AMP:I = 0x5

.field private static final SECONDS_IN_HOUR:I = 0xe10

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
    .line 63
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 475
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 232
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "notAvailable":Landroid/preference/Preference;
    const v1, 0x7f0c091b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 234
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 235
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
    .line 253
    .local p0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 255
    .local v16, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v14, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    .line 257
    .local v11, "numSippers":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_a

    .line 258
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    .line 259
    .local v15, "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    if-lez v17, :cond_9

    .line 260
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    .line 264
    .local v13, "realUid":I
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->isSharedGid(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 265
    const/16 v17, 0x0

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 270
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

    .line 275
    const/16 v13, 0x3e8

    .line 278
    :cond_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    .line 280
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

    .line 282
    .local v10, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v10, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 283
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 284
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 285
    move-object v15, v10

    .line 288
    .end local v10    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 289
    .local v7, "index":I
    if-gez v7, :cond_4

    .line 291
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 294
    .restart local v7    # "index":I
    .restart local v13    # "realUid":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 295
    .local v5, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 296
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 298
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 301
    :cond_5
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 303
    .local v4, "existingPackageLen":I
    :goto_2
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .line 305
    .local v8, "newPackageLen":I
    :goto_3
    if-lez v8, :cond_3

    .line 306
    add-int v17, v4, v8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 307
    .local v9, "newPackages":[Ljava/lang/String;
    if-lez v4, :cond_6

    .line 308
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    :cond_6
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    iput-object v9, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_1

    .line 301
    .end local v4    # "existingPackageLen":I
    .end local v8    # "newPackageLen":I
    .end local v9    # "newPackages":[Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 303
    .restart local v4    # "existingPackageLen":I
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 317
    .end local v4    # "existingPackageLen":I
    .end local v5    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_9
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 321
    .end local v15    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 322
    .local v12, "numUidSippers":I
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_b

    .line 323
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 327
    :cond_b
    new-instance v17, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 333
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

    .line 443
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v4, "stats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    const/high16 v6, 0x40a00000    # 5.0f

    .line 445
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

    .line 446
    .local v5, "type":Lcom/android/internal/os/BatterySipper$DrainType;
    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v7, :cond_0

    .line 445
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    :cond_0
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    const/4 v8, 0x0

    float-to-double v10, v6

    invoke-direct {v7, v5, v8, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    const/high16 v7, 0x40a00000    # 5.0f

    add-float/2addr v6, v7

    goto :goto_1

    .line 452
    .end local v5    # "type":Lcom/android/internal/os/BatterySipper$DrainType;
    :cond_1
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/settings_ex/fuelgauge/FakeUid;

    invoke-direct {v9, v14}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v10, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/settings_ex/fuelgauge/FakeUid;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    float-to-double v10, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v3, Lcom/android/internal/os/BatterySipper;

    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v8, Lcom/android/settings_ex/fuelgauge/FakeUid;

    invoke-static {v14}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    invoke-direct {v3, v7, v8, v12, v13}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 460
    .local v3, "sipper":Lcom/android/internal/os/BatterySipper;
    const-string v7, "dex2oat"

    iput-object v7, v3, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 461
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v3, Lcom/android/internal/os/BatterySipper;

    .end local v3    # "sipper":Lcom/android/internal/os/BatterySipper;
    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v8, Lcom/android/settings_ex/fuelgauge/FakeUid;

    const/16 v9, 0x2711

    invoke-static {v9}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v9

    invoke-direct {v8, v9}, Lcom/android/settings_ex/fuelgauge/FakeUid;-><init>(I)V

    invoke-direct {v3, v7, v8, v12, v13}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 465
    .restart local v3    # "sipper":Lcom/android/internal/os/BatterySipper;
    const-string v7, "dex2oat"

    iput-object v7, v3, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 466
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
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

    .line 470
    .restart local v3    # "sipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    return-object v4
.end method

.method private static isSharedGid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 238
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

.method private static isSystemUid(I)Z
    .locals 1
    .param p0, "uid"    # I

    .prologue
    .line 242
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
    .line 200
    const v0, 0x7f0c0bcc

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x36

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const v1, 0x7f080049

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 100
    const-string v1, "battery_history"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    .line 101
    const-string v1, "app_list"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    .line 105
    const-string v1, "enable_show_statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/SwitchPreference;

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "status_bar_show_battery_percent"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 114
    .local v0, "isStatusShow":I
    iget-object v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/SwitchPreference;

    if-ne v0, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 116
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerStatusBarEnable:Landroid/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 136
    return-void

    :cond_0
    move v1, v3

    .line 114
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 193
    const/4 v1, 0x4

    const v2, 0x7f0c0d4d

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 194
    .local v0, "batterySaver":Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 195
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 196
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onDestroy()V

    .line 160
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 162
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 206
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 227
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 208
    :pswitch_1
    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    .line 209
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 213
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 214
    const/4 v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 216
    :pswitch_2
    const-class v1, Lcom/android/settings_ex/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c097c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 218
    const/4 v1, 0x1

    goto :goto_0

    .line 220
    :pswitch_3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 221
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "classname"

    const-class v3, Lcom/android/settings_ex/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0d4d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 225
    const/4 v1, 0x1

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 151
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onPause()V

    .line 154
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 167
    instance-of v2, p2, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    if-nez v2, :cond_0

    .line 168
    const/4 v2, 0x0

    .line 175
    :goto_0
    return v2

    :cond_0
    move-object v1, p2

    .line 170
    check-cast v1, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    .line 171
    .local v1, "pgp":Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    invoke-virtual {v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    move-result-object v0

    .line 172
    .local v0, "entry":Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/SettingsActivity;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget v4, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings_ex/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings_ex/fuelgauge/BatteryEntry;Z)V

    .line 175
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 145
    invoke-super {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->onResume()V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 147
    return-void
.end method

.method protected refreshStats()V
    .locals 34

    .prologue
    .line 337
    invoke-super/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageBase;->refreshStats()V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHistPref:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->updatePreference(Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 342
    const/4 v4, 0x0

    .line 344
    .local v4, "addedSome":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v18

    .line 345
    .local v18, "powerProfile":Lcom/android/internal/os/PowerProfile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v21

    .line 346
    .local v21, "stats":Landroid/os/BatteryStats;
    const-string v27, "screen.full"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 349
    .local v6, "averagePower":D
    new-instance v26, Landroid/util/TypedValue;

    invoke-direct/range {v26 .. v26}, Landroid/util/TypedValue;-><init>()V

    .line 350
    .local v26, "value":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v27

    const v28, 0x1010429

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v26

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v27

    const v28, 0x7f0e0079

    invoke-virtual/range {v27 .. v28}, Landroid/content/Context;->getColor(I)I

    move-result v8

    .line 355
    .local v8, "colorControl":I
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpl-double v27, v6, v28

    if-gez v27, :cond_2

    .line 435
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 436
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 439
    :cond_1
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 440
    return-void

    .line 357
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v24

    .line 360
    .local v24, "usageList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v27, v0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v10

    .line 362
    .local v10, "dischargeAmount":I
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v13

    .line 363
    .local v13, "numSippers":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v13, :cond_0

    .line 364
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatterySipper;

    .line 365
    .local v20, "sipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    const-wide v30, 0x40ac200000000000L    # 3600.0

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4014000000000000L    # 5.0

    cmpg-double v27, v28, v30

    if-gez v27, :cond_5

    .line 363
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 360
    .end local v10    # "dischargeAmount":I
    .end local v12    # "i":I
    .end local v13    # "numSippers":I
    .end local v20    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .line 368
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

    .line 370
    .local v22, "totalPower":D
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v28, v0

    div-double v28, v28, v22

    int-to-double v0, v10

    move-wide/from16 v30, v0

    mul-double v16, v28, v30

    .line 371
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

    .line 374
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    .line 379
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

    .line 382
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    cmpg-double v27, v16, v28

    if-ltz v27, :cond_3

    .line 385
    const-string v27, "user"

    sget-object v28, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 389
    :cond_6
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v27, v0

    sget-object v28, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_7

    .line 394
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

    .line 397
    const-wide/high16 v28, 0x4014000000000000L    # 5.0

    cmpg-double v27, v16, v28

    if-ltz v27, :cond_3

    .line 400
    const-string v27, "user"

    sget-object v28, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    .line 404
    :cond_7
    new-instance v25, Landroid/os/UserHandle;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v27

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 406
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

    .line 408
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

    .line 410
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

    .line 412
    .local v9, "contentDescription":Ljava/lang/CharSequence;
    new-instance v19, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v5, v9, v11}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings_ex/fuelgauge/BatteryEntry;)V

    .line 415
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

    .line 417
    .local v14, "percentOfMax":D
    move-wide/from16 v0, v16

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 418
    invoke-virtual {v11}, Lcom/android/settings_ex/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    add-int/lit8 v27, v12, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 420
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1, v2}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 421
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    .line 422
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

    .line 424
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

    .line 426
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setTint(I)V

    .line 428
    :cond_a
    const/4 v4, 0x1

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 430
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
