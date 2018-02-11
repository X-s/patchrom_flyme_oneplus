.class public Lcom/android/settings_ex/datausage/AppDataUsage;
.super Lcom/android/settings_ex/datausage/DataUsageBase;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/datausage/AppDataUsage$1;,
        Lcom/android/settings_ex/datausage/AppDataUsage$2;,
        Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;,
        Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;
    }
.end annotation


# static fields
.field public static final ARG_APP_ITEM:Ljava/lang/String; = "app_item"

.field public static final ARG_NETWORK_TEMPLATE:Ljava/lang/String; = "network_template"

.field public static final ARG_SUBID:Ljava/lang/String; = "arg_subid"

.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_SECONDS:I = 0x1e

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_APP_SETTINGS:Ljava/lang/String; = "app_settings"

.field private static final KEY_BACKGROUND_USAGE:Ljava/lang/String; = "background_usage"

.field private static final KEY_CYCLE:Ljava/lang/String; = "cycle"

.field private static final KEY_DISABLE_MOBILE:Ljava/lang/String; = "disabled_mobile"

.field private static final KEY_DISABLE_WIFI:Ljava/lang/String; = "disabled_wifi"

.field private static final KEY_FOREGROUND_USAGE:Ljava/lang/String; = "foreground_usage"

.field private static final KEY_PF_CYCLE:Ljava/lang/String; = "pf_cycle"

.field private static final KEY_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict_background"

.field private static final KEY_TOTAL_USAGE:Ljava/lang/String; = "total_usage"

.field private static final KEY_UNRESTRICTED_DATA:Ljava/lang/String; = "unrestricted_data_saver"

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final MAXIMUM_POOL_SIZE:I

.field public static OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

.field public static SYSTEM_UID:I


# instance fields
.field private mAppItem:Lcom/android/settings_exlib/AppItem;

.field private mAppList:Landroid/support/v7/preference/PreferenceCategory;

.field private mAppSettings:Landroid/support/v7/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroid/support/v7/preference/Preference;

.field private mChartData:Lcom/android/settings_exlib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings_exlib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycle:Lcom/android/settings_ex/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings_ex/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleText:Landroid/support/v7/preference/Preference;

.field private mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

.field private mDisabledData:Landroid/support/v14/preference/SwitchPreference;

.field private mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

.field private mEnd:J

.field private mForegroundUsage:Landroid/support/v7/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

.field private mStart:J

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroid/support/v7/preference/Preference;

.field private mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/datausage/AppDataUsage;)Lcom/android/settings_exlib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/datausage/AppDataUsage;)Lcom/android/settings_ex/datausage/SpinnerPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mCycle:Lcom/android/settings_ex/datausage/SpinnerPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/datausage/AppDataUsage;)Lcom/android/settings_ex/datausage/CycleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings_ex/datausage/CycleAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/datausage/AppDataUsage;Lcom/android/settings_exlib/net/ChartData;)Lcom/android/settings_exlib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/datausage/AppDataUsage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->bindData()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/settings_ex/datausage/AppDataUsage;->CPU_COUNT:I

    .line 117
    sget v0, Lcom/android/settings_ex/datausage/AppDataUsage;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/settings_ex/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    .line 118
    sget v0, Lcom/android/settings_ex/datausage/AppDataUsage;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings_ex/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    .line 130
    const/16 v0, 0x3e8

    sput v0, Lcom/android/settings_ex/datausage/AppDataUsage;->SYSTEM_UID:I

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;-><init>()V

    .line 90
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mSubId:I

    .line 473
    new-instance v0, Lcom/android/settings_ex/datausage/AppDataUsage$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/datausage/AppDataUsage$1;-><init>(Lcom/android/settings_ex/datausage/AppDataUsage;)V

    .line 472
    iput-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 495
    new-instance v0, Lcom/android/settings_ex/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/datausage/AppDataUsage$2;-><init>(Lcom/android/settings_ex/datausage/AppDataUsage;)V

    .line 494
    iput-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 72
    return-void
.end method

.method private addUid(I)V
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 406
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 407
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 408
    iget-object v2, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private bindData()V
    .locals 18

    .prologue
    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mStart:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 418
    :cond_0
    const-wide/16 v14, 0x0

    .local v14, "foregroundBytes":J
    const-wide/16 v12, 0x0

    .line 431
    .local v12, "backgroundBytes":J
    :goto_0
    add-long v16, v12, v14

    .line 432
    .local v16, "totalBytes":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 434
    .local v2, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v2, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 436
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 413
    return-void

    .line 422
    .end local v2    # "context":Landroid/content/Context;
    .end local v12    # "backgroundBytes":J
    .end local v14    # "foregroundBytes":J
    .end local v16    # "totalBytes":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 423
    .local v8, "now":J
    const/4 v10, 0x0

    .line 424
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_exlib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 425
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v12, v4, v6

    .line 426
    .restart local v12    # "backgroundBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_exlib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 427
    iget-wide v4, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v14, v4, v6

    .restart local v14    # "foregroundBytes":J
    goto :goto_0
.end method

.method private getAppRestrictBackground()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 440
    iget-object v3, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v0, v3, Lcom/android/settings_exlib/AppItem;->key:I

    .line 441
    .local v0, "uid":I
    iget-object v3, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v3, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 442
    .local v1, "uidPolicy":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private getUnrestrictData()Z
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v1, v1, Lcom/android/settings_exlib/AppItem;->key:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result v0

    return v0

    .line 449
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateFireWallState()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 563
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v6, v6, Lcom/android/settings_exlib/AppItem;->key:I

    invoke-static {v3, v6}, Lcom/android/settings_ex/datausage/OPDataUsageUtils;->getApplicationInfoByUid(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    .line 564
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 566
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/oneplus/settings/utils/OPFirewallUtils;->selectFirewallRuleByPkg(Landroid/content/Context;Ljava/lang/String;)Lcom/oneplus/settings/utils/OPFirewallRule;

    move-result-object v2

    .line 568
    .local v2, "role":Lcom/oneplus/settings/utils/OPFirewallRule;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 569
    iget-object v6, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Lcom/oneplus/settings/utils/OPFirewallRule;->getMobile()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 573
    :goto_2
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 574
    iget-object v3, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Lcom/oneplus/settings/utils/OPFirewallRule;->getWlan()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_4

    :goto_3
    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v3, v5

    .line 569
    goto :goto_1

    .line 571
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_4
    move v4, v5

    .line 574
    goto :goto_3

    .line 576
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updatePrefs()V
    .locals 2

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 386
    return-void
.end method

.method private updatePrefs(ZZ)V
    .locals 4
    .param p1, "restrictBackground"    # Z
    .param p2, "unrestrictData"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 392
    iget-object v3, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 395
    if-eqz p1, :cond_3

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 390
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 392
    goto :goto_0

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 469
    const/16 v0, 0x157

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isBlacklisted"    # Z

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget-object v0, v0, Lcom/android/settings_exlib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/settings_ex/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 551
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 30
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 139
    .local v2, "args":Landroid/os/Bundle;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v4}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    if-eqz v2, :cond_7

    const-string/jumbo v4, "app_item"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/android/settings_exlib/AppItem;

    :goto_0
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    .line 145
    if-eqz v2, :cond_8

    const-string/jumbo v4, "network_template"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    :goto_1
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v4, :cond_0

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 149
    .local v10, "context":Landroid/content/Context;
    invoke-static {v10}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v4

    .line 148
    invoke-static {v10, v4}, Lcom/android/settings_ex/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 151
    .end local v10    # "context":Landroid/content/Context;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    if-nez v4, :cond_b

    .line 152
    if-eqz v2, :cond_9

    const-string/jumbo v4, "uid"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 154
    .local v24, "uid":I
    :goto_2
    const/4 v4, -0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_a

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 167
    .end local v24    # "uid":I
    :cond_1
    :goto_3
    const v4, 0x7f08000b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->addPreferencesFromResource(I)V

    .line 169
    const-string/jumbo v4, "total_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    .line 170
    const-string/jumbo v4, "foreground_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    .line 171
    const-string/jumbo v4, "background_usage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    .line 174
    if-eqz v2, :cond_c

    const-string/jumbo v4, "arg_subid"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    :goto_4
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mSubId:I

    .line 175
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mSubId:I

    invoke-static {v4, v5}, Lcom/android/settings_ex/datausage/OPDataUsageUtils;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object v22

    .line 176
    .local v22, "section":[J
    const/4 v4, 0x0

    aget-wide v4, v22, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mStart:J

    .line 177
    const/4 v4, 0x1

    aget-wide v4, v22, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mEnd:J

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mStart:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mEnd:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-static {v4, v6, v7, v0, v1}, Lcom/android/settings_ex/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v23

    .line 179
    .local v23, "sectionTextString":Ljava/lang/String;
    const-string/jumbo v4, "pf_cycle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mCycleText:Landroid/support/v7/preference/Preference;

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mCycleText:Landroid/support/v7/preference/Preference;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    const-string/jumbo v4, "disabled_mobile"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    .line 182
    const-string/jumbo v4, "disabled_wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    .line 183
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v4, Lcom/android/settings_exlib/AppItem;->key:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    .line 184
    .local v26, "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v4, Lcom/android/settings_exlib/AppItem;->key:I

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 189
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 190
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 192
    :goto_5
    const-string/jumbo v4, "cycle"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/datausage/SpinnerPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mCycle:Lcom/android/settings_ex/datausage/SpinnerPreference;

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mCycle:Lcom/android/settings_ex/datausage/SpinnerPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/datausage/SpinnerPreference;->setVisible(Z)V

    .line 196
    new-instance v4, Lcom/android/settings_ex/datausage/CycleAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mCycle:Lcom/android/settings_ex/datausage/SpinnerPreference;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/settings_ex/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings_ex/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings_ex/datausage/CycleAdapter;

    .line 198
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v4, Lcom/android/settings_exlib/AppItem;->key:I

    if-lez v4, :cond_12

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 202
    .local v21, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    .line 204
    .local v14, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v14}, Landroid/content/pm/PackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v6, v6, Lcom/android/settings_exlib/AppItem;->key:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 205
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 206
    iget-object v4, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .end local v14    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v4, Lcom/android/settings_exlib/AppItem;->key:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_e

    .line 218
    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 226
    :goto_7
    new-instance v4, Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/settings_ex/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    .line 227
    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    .line 229
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 233
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    .line 234
    .local v17, "matchFound":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "packageName$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 235
    .local v18, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 237
    const/16 v17, 0x1

    .line 241
    .end local v18    # "packageName":Ljava/lang/String;
    :cond_5
    if-nez v17, :cond_6

    .line 242
    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 243
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    .line 246
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_f

    .line 247
    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceCategory;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    .line 248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v20

    .line 249
    .local v20, "packageSize":I
    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    move/from16 v0, v20

    invoke-direct {v9, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 250
    .local v9, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v4, Lcom/android/settings_ex/datausage/AppDataUsage;->CORE_POOL_SIZE:I

    .line 251
    sget v5, Lcom/android/settings_ex/datausage/AppDataUsage;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v6, 0x1e

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 250
    invoke-direct/range {v3 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 252
    .local v3, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v13, v4, :cond_10

    .line 253
    new-instance v16, Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;-><init>(Lcom/android/settings_ex/datausage/AppDataUsage;Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;)V

    .line 254
    .local v16, "loader":Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v5}, Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 252
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 140
    .end local v3    # "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v9    # "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    .end local v13    # "i":I
    .end local v16    # "loader":Lcom/android/settings_ex/datausage/AppDataUsage$AppPrefLoader;
    .end local v17    # "matchFound":Z
    .end local v19    # "packageName$iterator":Ljava/util/Iterator;
    .end local v20    # "packageSize":I
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "section":[J
    .end local v23    # "sectionTextString":Ljava/lang/String;
    .end local v26    # "userId":I
    :catch_0
    move-exception v12

    .line 141
    .local v12, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 144
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 145
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 153
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "uid"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    goto/16 :goto_2

    .line 158
    .restart local v24    # "uid":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/settings_ex/datausage/AppDataUsage;->addUid(I)V

    .line 159
    new-instance v4, Lcom/android/settings_exlib/AppItem;

    move/from16 v0, v24

    invoke-direct {v4, v0}, Lcom/android/settings_exlib/AppItem;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/android/settings_exlib/AppItem;->addUid(I)V

    goto/16 :goto_3

    .line 163
    .end local v24    # "uid":I
    :cond_b
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget-object v4, v4, Lcom/android/settings_exlib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v13, v4, :cond_1

    .line 164
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget-object v4, v4, Lcom/android/settings_exlib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->addUid(I)V

    .line 163
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 174
    .end local v13    # "i":I
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 184
    .restart local v22    # "section":[J
    .restart local v23    # "sectionTextString":Ljava/lang/String;
    .restart local v26    # "userId":I
    :cond_d
    const/16 v4, 0x3e7

    move/from16 v0, v26

    if-eq v0, v4, :cond_2

    .line 185
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 187
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->updateFireWallState()V

    goto/16 :goto_5

    .line 221
    :cond_e
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    .line 222
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 223
    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    .line 224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_7

    .line 257
    .restart local v17    # "matchFound":Z
    .restart local v19    # "packageName$iterator":Ljava/util/Iterator;
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_f
    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 311
    .end local v17    # "matchFound":Z
    .end local v19    # "packageName$iterator":Ljava/util/Iterator;
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v4, Lcom/android/settings_exlib/AppItem;->key:I

    sget v5, Lcom/android/settings_ex/datausage/AppDataUsage;->SYSTEM_UID:I

    if-ne v4, v5, :cond_11

    sget-object v4, Lcom/android/settings_ex/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

    if-eqz v4, :cond_11

    .line 312
    sget-object v4, Lcom/android/settings_ex/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

    iget-object v4, v4, Lcom/android/settings_exlib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 313
    sget-object v4, Lcom/android/settings_ex/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

    iget-object v4, v4, Lcom/android/settings_exlib/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 134
    :cond_11
    return-void

    .line 260
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v4, Lcom/android/settings_exlib/AppItem;->key:I

    const/4 v5, -0x4

    if-ne v4, v5, :cond_15

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e006f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 263
    sget-object v4, Lcom/android/settings_ex/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

    if-eqz v4, :cond_13

    .line 264
    sget-object v4, Lcom/android/settings_ex/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

    iget-object v4, v4, Lcom/android/settings_exlib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 282
    :cond_13
    :goto_b
    const/16 v26, 0x0

    .line 284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v4, Lcom/android/settings_exlib/AppItem;->key:I

    const/4 v5, -0x5

    if-ne v4, v5, :cond_18

    .line 285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v4, Lcom/android/settings_exlib/AppItem;->key:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    .line 290
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v25

    .line 291
    .local v25, "um":Landroid/os/UserManager;
    invoke-virtual/range {v25 .. v26}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    .line 292
    .local v15, "info":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 294
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    if-eqz v15, :cond_14

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-static {v4, v0, v15}, Lcom/android/settings_exlib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/android/settings_exlib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 299
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    .line 300
    const-string/jumbo v4, "unrestricted_data_saver"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v4, "app_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 302
    const-string/jumbo v4, "restrict_background"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    .line 303
    const-string/jumbo v4, "app_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings_ex/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 267
    .end local v15    # "info":Landroid/content/pm/UserInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "um":Landroid/os/UserManager;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v4, Lcom/android/settings_exlib/AppItem;->key:I

    const/4 v5, -0x5

    if-ne v4, v5, :cond_16

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0e0074

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    goto/16 :goto_b

    .line 270
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v4, Lcom/android/settings_exlib/AppItem;->key:I

    invoke-static {v4}, Lcom/android/settings_exlib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v26

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v25

    .line 272
    .restart local v25    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v25 .. v26}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v15

    .line 273
    .restart local v15    # "info":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 275
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    if-eqz v15, :cond_17

    .line 276
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-static {v4, v0, v15}, Lcom/android/settings_exlib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v15}, Lcom/android/settings_exlib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 280
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    goto/16 :goto_b

    .line 287
    .end local v15    # "info":Landroid/content/pm/UserInfo;
    .end local v21    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "um":Landroid/os/UserManager;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v4, Lcom/android/settings_exlib/AppItem;->key:I

    invoke-static {v4}, Lcom/android/settings_exlib/net/UidDetailProvider;->getUserIdForKey(I)I

    move-result v26

    goto/16 :goto_c

    .line 207
    .restart local v21    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v11

    .local v11, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_6
.end method

.method public onDataSaverChanged(Z)V
    .locals 0
    .param p1, "isDataSaving"    # Z

    .prologue
    .line 539
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 321
    sget-object v0, Lcom/android/settings_ex/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/android/settings_ex/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

    iget-object v0, v0, Lcom/android/settings_exlib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 323
    sput-object v1, Lcom/android/settings_ex/datausage/AppDataUsage;->OSUidDetail:Lcom/android/settings_exlib/net/UidDetail;

    .line 326
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;->onDestroy()V

    .line 318
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;->onPause()V

    .line 344
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->remListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V

    .line 342
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 351
    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    return v6

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mRestrictBackground:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_2

    .line 355
    iget-object v2, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v4, v1, Lcom/android/settings_exlib/AppItem;->key:I

    iget-object v7, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v6

    :goto_0
    invoke-virtual {v2, v4, v7, v1}, Lcom/android/settings_ex/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    .line 356
    return v5

    :cond_1
    move v1, v5

    .line 355
    goto :goto_0

    .line 357
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mUnrestrictedData:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    .line 358
    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v2, v2, Lcom/android/settings_exlib/AppItem;->key:I

    iget-object v4, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v1, v2, v4, v6}, Lcom/android/settings_ex/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    .line 359
    return v5

    .line 362
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledWifi:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_5

    .line 363
    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v3, v1, Lcom/android/settings_exlib/AppItem;->key:I

    .line 364
    .local v3, "uid":I
    new-instance v0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;-><init>(Lcom/android/settings_ex/datausage/AppDataUsage;Landroid/content/Context;IZI)V

    .line 365
    .local v0, "ruleTask":Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;
    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 372
    .end local v0    # "ruleTask":Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;
    .end local v3    # "uid":I
    :cond_4
    :goto_1
    return v6

    .line 366
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDisabledData:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    .line 367
    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v3, v1, Lcom/android/settings_exlib/AppItem;->key:I

    .line 368
    .restart local v3    # "uid":I
    new-instance v0, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object v1, p0

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;-><init>(Lcom/android/settings_ex/datausage/AppDataUsage;Landroid/content/Context;IZI)V

    .line 369
    .restart local v0    # "ruleTask":Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;
    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/datausage/AppDataUsage$UpdateRuleTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    .line 380
    iget-object v3, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget v3, v3, Lcom/android/settings_exlib/AppItem;->key:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 379
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 381
    const/4 v0, 0x1

    return v0

    .line 383
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 331
    invoke-super {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;->onResume()V

    .line 332
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings_ex/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/datausage/DataSaverBackend;->addListener(Lcom/android/settings_ex/datausage/DataSaverBackend$Listener;)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    .line 336
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    invoke-static {v1, v2}, Lcom/android/settings_exlib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_exlib/AppItem;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 336
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 338
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->updatePrefs()V

    .line 330
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 454
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 456
    const v0, 0x7f040025

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/datausage/AppDataUsage;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v7

    .line 457
    .local v7, "header":Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 458
    :goto_0
    const/4 v4, 0x0

    .line 460
    .local v4, "uid":I
    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 463
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 464
    invoke-static {p0}, Lcom/android/settings_ex/AppHeader;->includeAppInfo(Landroid/app/Fragment;)Z

    move-result v5

    .line 463
    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/AppHeader;->setupHeaderView(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;IZILandroid/view/View;Landroid/content/Intent;)Landroid/view/View;

    .line 453
    return-void

    .line 457
    .end local v4    # "uid":I
    :cond_0
    const/4 v3, 0x0

    .local v3, "pkg":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "uid":I
    :cond_1
    move v4, v6

    .line 460
    goto :goto_1

    .line 461
    :catch_0
    move-exception v9

    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isWhitelisted"    # Z

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/settings_ex/datausage/AppDataUsage;->mAppItem:Lcom/android/settings_exlib/AppItem;

    iget-object v0, v0, Lcom/android/settings_exlib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/settings_ex/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 544
    :cond_0
    return-void
.end method
