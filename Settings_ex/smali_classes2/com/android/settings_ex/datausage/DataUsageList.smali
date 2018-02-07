.class public Lcom/android/settings_ex/datausage/DataUsageList;
.super Lcom/android/settings_ex/datausage/DataUsageBase;
.source "DataUsageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/datausage/DataUsageList$1;,
        Lcom/android/settings_ex/datausage/DataUsageList$2;,
        Lcom/android/settings_ex/datausage/DataUsageList$3;,
        Lcom/android/settings_ex/datausage/DataUsageList$4;
    }
.end annotation


# static fields
.field public static final EXTRA_NETWORK_TEMPLATE:Ljava/lang/String; = "network_template"

.field public static final EXTRA_SUB_ID:Ljava/lang/String; = "sub_id"

.field private static final KEY_APPS_GROUP:Ljava/lang/String; = "apps_group"

.field private static final KEY_CHART_DATA:Ljava/lang/String; = "chart_data"

.field private static final KEY_CHART_DATA_DEPRECATED:Ljava/lang/String; = "chart_data_deprecated"

.field private static final KEY_USAGE_AMOUNT:Ljava/lang/String; = "usage_amount"

.field private static final KEY_USAGE_SUMMARY:Ljava/lang/String; = "usage_summary"

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOADER_SUMMARY:I = 0x3

.field private static final LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "DataUsage"

.field private static mSelectLeft:J

.field private static mSelectRight:J


# instance fields
.field private mApps:Landroid/support/v7/preference/PreferenceGroup;

.field private mBinding:Z

.field private mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

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

.field private mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

.field private mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

.field private mCycleAdapter:Lcom/android/settings_ex/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mDataSelectionEnable:Z

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mHeader:Landroid/view/View;

.field private final mMobileDataEnabled:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShowDataUsage:Z

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settings_exlib/net/UidDetailProvider;

.field private mUsageAmount:Landroid/support/v7/preference/Preference;

.field private mUsageSummary:Landroid/support/v7/preference/Preference;

.field private tv_filter_datetime:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_ex/datausage/ChartDataUsagePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings_ex/datausage/DataUsageList;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mSubId:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/net/NetworkTemplate;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_exlib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/datausage/DataUsageList;)Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/datausage/DataUsageList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mDataSelectionEnable:Z

    return v0
.end method

.method static synthetic -get6()J
    .locals 2

    sget-wide v0, Lcom/android/settings_ex/datausage/DataUsageList;->mSelectLeft:J

    return-wide v0
.end method

.method static synthetic -get7()J
    .locals 2

    sget-wide v0, Lcom/android/settings_ex/datausage/DataUsageList;->mSelectRight:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/settings_ex/datausage/DataUsageList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mShowDataUsage:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/datausage/DataUsageList;Lcom/android/settings_exlib/net/ChartData;)Lcom/android/settings_exlib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/datausage/DataUsageList;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/datausage/DataUsageList;J)V
    .locals 1
    .param p1, "limitBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/datausage/DataUsageList;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/datausage/DataUsageList;J)V
    .locals 1
    .param p1, "warningBytes"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/datausage/DataUsageList;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings_ex/datausage/DataUsageList;Lcom/android/settings_exlib/AppItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/settings_exlib/AppItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/datausage/DataUsageList;->startAppDataUsage(Lcom/android/settings_exlib/AppItem;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings_ex/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings_ex/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->updateDetailData()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings_ex/datausage/DataUsageList;Z)V
    .locals 0
    .param p1, "refreshCycle"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/datausage/DataUsageList;->updatePolicy(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;-><init>()V

    .line 114
    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mShowDataUsage:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mDataSelectionEnable:Z

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mMobileDataEnabled:Ljava/util/Map;

    .line 136
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 650
    new-instance v0, Lcom/android/settings_ex/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/datausage/DataUsageList$1;-><init>(Lcom/android/settings_ex/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 679
    new-instance v0, Lcom/android/settings_ex/datausage/DataUsageList$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/datausage/DataUsageList$2;-><init>(Lcom/android/settings_ex/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 719
    new-instance v0, Lcom/android/settings_ex/datausage/DataUsageList$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/datausage/DataUsageList$3;-><init>(Lcom/android/settings_ex/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 755
    new-instance v0, Lcom/android/settings_ex/datausage/DataUsageList$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/datausage/DataUsageList$4;-><init>(Lcom/android/settings_ex/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 88
    return-void
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J
    .locals 9
    .param p0, "collapseKey"    # I
    .param p2, "entry"    # Landroid/net/NetworkStats$Entry;
    .param p3, "itemCategory"    # I
    .param p5, "largest"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_exlib/AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/AppItem;",
            ">;J)J"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings_exlib/AppItem;>;"
    .local p4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/AppItem;>;"
    iget v1, p2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 584
    .local v1, "uid":I
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/AppItem;

    .line 585
    .local v0, "item":Lcom/android/settings_exlib/AppItem;
    if-nez v0, :cond_0

    .line 586
    new-instance v0, Lcom/android/settings_exlib/AppItem;

    .end local v0    # "item":Lcom/android/settings_exlib/AppItem;
    invoke-direct {v0, p0}, Lcom/android/settings_exlib/AppItem;-><init>(I)V

    .line 587
    .restart local v0    # "item":Lcom/android/settings_exlib/AppItem;
    iput p3, v0, Lcom/android/settings_exlib/AppItem;->category:I

    .line 588
    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    iget v2, v0, Lcom/android/settings_exlib/AppItem;->key:I

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 591
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settings_exlib/AppItem;->addUid(I)V

    .line 592
    iget-wide v2, v0, Lcom/android/settings_exlib/AppItem;->total:J

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settings_exlib/AppItem;->total:J

    .line 593
    iget-wide v2, v0, Lcom/android/settings_exlib/AppItem;->total:J

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 604
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 605
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 608
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 610
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    .line 612
    return v8

    .line 615
    :cond_0
    const/4 v1, 0x1

    .line 616
    .local v1, "isReady":Z
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v1    # "isReady":Z
    .local v4, "subInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 617
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v9, 0x5

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    :goto_1
    and-int/2addr v1, v7

    .local v1, "isReady":Z
    goto :goto_0

    .end local v1    # "isReady":Z
    :cond_1
    move v7, v8

    goto :goto_1

    .line 620
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v1

    .line 627
    .local v2, "retVal":Z
    :goto_2
    return v2

    .end local v2    # "retVal":Z
    :cond_3
    move v2, v8

    .line 620
    goto :goto_2
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v2, 0x0

    .line 638
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 639
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 640
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 641
    .local v3, "slotId":I
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const/4 v1, 0x1

    .line 643
    .local v1, "isReady":Z
    :goto_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v1

    .line 647
    .local v2, "retVal":Z
    :cond_0
    return v2

    .line 641
    .end local v1    # "isReady":Z
    .end local v2    # "retVal":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isReady":Z
    goto :goto_0
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_exlib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 791
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/datausage/DataUsageList;->updatePolicy(Z)V

    .line 788
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 784
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_exlib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 785
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/datausage/DataUsageList;->updatePolicy(Z)V

    .line 782
    return-void
.end method

.method private startAppDataUsage(Lcom/android/settings_exlib/AppItem;)V
    .locals 6
    .param p1, "item"    # Lcom/android/settings_exlib/AppItem;

    .prologue
    .line 564
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 566
    .local v5, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "arg_subid"

    iget v1, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mSubId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 568
    const-string/jumbo v0, "app_item"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 569
    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 570
    const-class v0, Lcom/android/settings_ex/datausage/AppDataUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0ee9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings_ex/datausage/DataUsageList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 563
    return-void
.end method

.method private updateBody()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 304
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mBinding:Z

    .line 305
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    .line 306
    const-string/jumbo v4, "DataUsage"

    const-string/jumbo v5, "updateBody is not Added"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 315
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    .line 316
    iget-object v5, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v5, v6}, Lcom/android/settings_exlib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_exlib/AppItem;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 315
    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5, v6}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 319
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 321
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mBinding:Z

    .line 323
    iget-boolean v4, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-nez v4, :cond_2

    .line 324
    const v4, 0x7f0b0332

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    .line 325
    .local v2, "seriesColor":I
    iget v4, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mSubId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 326
    iget-object v4, p0, Lcom/android/settings_ex/datausage/DataUsageList;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 327
    iget v5, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mSubId:I

    .line 326
    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 328
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_1

    .line 329
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v2

    .line 332
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 333
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 332
    const/16 v7, 0x7f

    invoke-static {v7, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 334
    .local v1, "secondaryColor":I
    iget-object v4, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    invoke-virtual {v4, v2, v1}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->setColors(II)V

    .line 337
    .end local v1    # "secondaryColor":I
    .end local v2    # "seriesColor":I
    :cond_2
    iget-boolean v4, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mShowDataUsage:Z

    if-nez v4, :cond_3

    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mUsageSummary:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 303
    :cond_3
    return-void
.end method

.method private updateDetailData()V
    .locals 24

    .prologue
    .line 410
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v5, :cond_3

    .line 411
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mShowDataUsage:Z

    if-eqz v5, :cond_2

    .line 412
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->getInspectLeft()J

    move-result-wide v6

    .line 413
    .local v6, "start":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->getInspectRight()J

    move-result-wide v8

    .line 414
    .local v8, "end":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->getInspectLeft()J

    move-result-wide v20

    sput-wide v20, Lcom/android/settings_ex/datausage/DataUsageList;->mSelectLeft:J

    .line 415
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->getInspectRight()J

    move-result-wide v20

    sput-wide v20, Lcom/android/settings_ex/datausage/DataUsageList;->mSelectRight:J

    .line 416
    const-string/jumbo v5, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Will get left and right data here:"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v19, "-->"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 417
    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, v19

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v19

    .line 416
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v5, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 428
    .local v10, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 430
    .local v4, "context":Landroid/content/Context;
    const/4 v13, 0x0

    .line 431
    .local v13, "entry":Landroid/net/NetworkStatsHistory$Entry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    if-eqz v5, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    iget-object v5, v5, Lcom/android/settings_exlib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    .line 436
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v5

    .line 437
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v6, v7, v8, v9}, Lcom/android/settings_exlib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v19, v0

    .line 436
    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v12, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 439
    if-eqz v13, :cond_4

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v20, v0

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v22, v0

    add-long v16, v20, v22

    .line 440
    .local v16, "totalBytes":J
    :goto_1
    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    .line 441
    .local v18, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v18, v12, v19

    const v19, 0x7f0e0fea

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/android/settings_ex/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 443
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mShowDataUsage:Z

    if-eqz v5, :cond_1

    .line 444
    const v15, 0x7f0e0cb9

    .line 445
    .local v15, "summaryRes":I
    sget-wide v20, Lcom/android/settings_ex/datausage/DataUsageList;->mSelectLeft:J

    sget-wide v22, Lcom/android/settings_ex/datausage/DataUsageList;->mSelectRight:J

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/settings_ex/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v14

    .line 446
    .local v14, "rangePhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mUsageSummary:Landroid/support/v7/preference/Preference;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v18, v12, v19

    const/16 v19, 0x1

    aput-object v14, v12, v19

    const v19, 0x7f0e0cb9

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Lcom/android/settings_ex/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    .end local v14    # "rangePhrase":Ljava/lang/String;
    .end local v15    # "summaryRes":I
    :cond_1
    return-void

    .line 419
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "now":J
    .end local v16    # "totalBytes":J
    .end local v18    # "totalPhrase":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->getInspectStart()J

    move-result-wide v6

    .line 420
    .restart local v6    # "start":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->getInspectEnd()J

    move-result-wide v8

    .restart local v8    # "end":J
    goto/16 :goto_0

    .line 423
    .end local v6    # "start":J
    .end local v8    # "end":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->getInspectStart()J

    move-result-wide v6

    .line 424
    .restart local v6    # "start":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    invoke-virtual {v5}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->getInspectEnd()J

    move-result-wide v8

    .restart local v8    # "end":J
    goto/16 :goto_0

    .line 439
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v10    # "now":J
    :cond_4
    const-wide/16 v16, 0x0

    goto :goto_1
.end method

.method private updatePolicy(Z)V
    .locals 10
    .param p1, "refreshCycle"    # Z

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    const v4, 0x7f1100b0

    .line 347
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settings_exlib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 349
    .local v1, "policy":Landroid/net/NetworkPolicy;
    iget v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ex/datausage/DataUsageList;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/DataUsageList;->isMobileDataAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 350
    iget-boolean v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v2, :cond_1

    .line 351
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 363
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 369
    .local v0, "filter_settings":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 371
    new-instance v2, Lcom/android/settings_ex/datausage/DataUsageList$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/datausage/DataUsageList$7;-><init>(Lcom/android/settings_ex/datausage/DataUsageList;)V

    .line 370
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    .end local v0    # "filter_settings":Landroid/widget/ImageView;
    :goto_1
    if-eqz p1, :cond_0

    .line 394
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings_ex/datausage/CycleAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartData:Lcom/android/settings_exlib/net/ChartData;

    invoke-virtual {v2, v1, v3}, Lcom/android/settings_ex/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settings_exlib/net/ChartData;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->updateDetailData()V

    .line 346
    :cond_0
    return-void

    .line 357
    :cond_1
    iget-wide v2, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settings_exlib/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/settings_exlib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 361
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_0

    .line 383
    :cond_3
    iget-boolean v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v2, :cond_4

    .line 384
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 389
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 386
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_2
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 32
    .param p1, "stats"    # Landroid/net/NetworkStats;
    .param p2, "restrictedUids"    # [I

    .prologue
    .line 454
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 455
    .local v7, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/AppItem;>;"
    const-wide/16 v8, 0x0

    .line 457
    .local v8, "largest":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    .line 458
    .local v10, "currentUserId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v31

    .line 459
    .local v31, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v31 .. v31}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v26

    .line 460
    .local v26, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 462
    .local v4, "knownItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings_exlib/AppItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    .line 463
    .local v25, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 465
    .local v2, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string/jumbo v6, "com.android.dialer"

    const/4 v12, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 470
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    const/4 v5, 0x0

    .line 471
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v28

    .line 472
    .local v28, "size":I
    :goto_1
    const/16 v22, 0x0

    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .local v22, "i":I
    :goto_2
    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_8

    .line 473
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 476
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    iget v0, v5, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v29, v0

    .line 480
    .local v29, "uid":I
    invoke-static/range {v29 .. v29}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v30

    .line 481
    .local v30, "userId":I
    invoke-static/range {v29 .. v29}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 482
    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v30

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 483
    move/from16 v0, v30

    if-eq v0, v10, :cond_0

    .line 485
    invoke-static/range {v30 .. v30}, Lcom/android/settings_exlib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    .line 486
    .local v3, "managedKey":I
    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/settings_ex/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    .line 490
    .end local v3    # "managedKey":I
    :cond_0
    move/from16 v11, v29

    .line 491
    .local v11, "collapseKey":I
    const/4 v14, 0x2

    .local v14, "category":I
    :goto_3
    move-object v12, v4

    move-object v13, v5

    move-object v15, v7

    move-wide/from16 v16, v8

    .line 515
    invoke-static/range {v11 .. v17}, Lcom/android/settings_ex/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    .line 472
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 466
    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    .end local v22    # "i":I
    .end local v28    # "size":I
    .end local v29    # "uid":I
    .end local v30    # "userId":I
    .restart local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v21

    .line 467
    .local v21, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "get dialer getApplicationInfo failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    .end local v2    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "e":Ljava/lang/Exception;
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    :cond_1
    const/16 v28, 0x0

    .restart local v28    # "size":I
    goto :goto_1

    .line 494
    .local v5, "entry":Landroid/net/NetworkStats$Entry;
    .restart local v22    # "i":I
    .restart local v29    # "uid":I
    .restart local v30    # "userId":I
    :cond_2
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v23

    .line 495
    .local v23, "info":Landroid/content/pm/UserInfo;
    if-nez v23, :cond_3

    .line 496
    const/4 v11, -0x4

    .line 497
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    goto :goto_3

    .line 500
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_3
    invoke-static/range {v30 .. v30}, Lcom/android/settings_exlib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v11

    .line 501
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x0

    .restart local v14    # "category":I
    goto :goto_3

    .line 504
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    .end local v23    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    const/4 v6, -0x4

    move/from16 v0, v29

    if-eq v0, v6, :cond_5

    const/4 v6, -0x5

    move/from16 v0, v29

    if-ne v0, v6, :cond_6

    .line 505
    :cond_5
    move/from16 v11, v29

    .line 506
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .line 504
    .restart local v14    # "category":I
    goto :goto_3

    .line 507
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_6
    if-eqz v2, :cond_7

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, v29

    if-ne v0, v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 508
    const v12, 0x7f0c0036

    .line 507
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 509
    move/from16 v11, v29

    .line 510
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    goto :goto_3

    .line 512
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    :cond_7
    const/16 v11, 0x3e8

    .line 513
    .restart local v11    # "collapseKey":I
    const/4 v14, 0x2

    .restart local v14    # "category":I
    goto :goto_3

    .line 518
    .end local v5    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v11    # "collapseKey":I
    .end local v14    # "category":I
    .end local v29    # "uid":I
    .end local v30    # "userId":I
    :cond_8
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v27, v0

    .line 519
    .local v27, "restrictedUidsMax":I
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    .line 520
    aget v29, p2, v22

    .line 522
    .restart local v29    # "uid":I
    new-instance v6, Landroid/os/UserHandle;

    invoke-static/range {v29 .. v29}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v26

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 519
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 526
    :cond_9
    move/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings_exlib/AppItem;

    .line 527
    .local v24, "item":Lcom/android/settings_exlib/AppItem;
    if-nez v24, :cond_a

    .line 528
    new-instance v24, Lcom/android/settings_exlib/AppItem;

    .end local v24    # "item":Lcom/android/settings_exlib/AppItem;
    move-object/from16 v0, v24

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/settings_exlib/AppItem;-><init>(I)V

    .line 529
    .restart local v24    # "item":Lcom/android/settings_exlib/AppItem;
    const-wide/16 v12, -0x1

    move-object/from16 v0, v24

    iput-wide v12, v0, Lcom/android/settings_exlib/AppItem;->total:J

    .line 530
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    move-object/from16 v0, v24

    iget v6, v0, Lcom/android/settings_exlib/AppItem;->key:I

    move-object/from16 v0, v24

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 533
    :cond_a
    const/4 v6, 0x1

    move-object/from16 v0, v24

    iput-boolean v6, v0, Lcom/android/settings_exlib/AppItem;->restricted:Z

    goto :goto_5

    .line 536
    .end local v24    # "item":Lcom/android/settings_exlib/AppItem;
    .end local v29    # "uid":I
    :cond_b
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 538
    const/16 v22, 0x0

    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v22

    if-ge v0, v6, :cond_d

    .line 539
    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-eqz v6, :cond_c

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings_exlib/AppItem;

    iget-wide v12, v6, Lcom/android/settings_exlib/AppItem;->total:J

    const-wide/16 v16, 0x64

    mul-long v12, v12, v16

    div-long/2addr v12, v8

    long-to-int v0, v12

    move/from16 v18, v0

    .line 541
    .local v18, "percentTotal":I
    :goto_7
    new-instance v15, Lcom/android/settings_ex/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v16

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_exlib/AppItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settings_exlib/net/UidDetailProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mExecutor:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v20, v0

    invoke-direct/range {v15 .. v20}, Lcom/android/settings_ex/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/AppItem;ILcom/android/settings_exlib/net/UidDetailProvider;Ljava/util/concurrent/ExecutorService;)V

    .line 543
    .local v15, "preference":Lcom/android/settings_ex/datausage/AppDataUsagePreference;
    new-instance v6, Lcom/android/settings_ex/datausage/DataUsageList$8;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings_ex/datausage/DataUsageList$8;-><init>(Lcom/android/settings_ex/datausage/DataUsageList;)V

    invoke-virtual {v15, v6}, Lcom/android/settings_ex/datausage/AppDataUsagePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 559
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v15}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 538
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 539
    .end local v15    # "preference":Lcom/android/settings_ex/datausage/AppDataUsagePreference;
    .end local v18    # "percentTotal":I
    :cond_c
    const/16 v18, 0x0

    .restart local v18    # "percentTotal":I
    goto :goto_7

    .line 453
    .end local v18    # "percentTotal":I
    :cond_d
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 141
    const/16 v0, 0x155

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings_ex/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 149
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    const-string/jumbo v3, "DataUsage"

    const-string/jumbo v6, "No bandwidth control; leaving"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 155
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->services:Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings_ex/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    new-instance v3, Lcom/android/settings_exlib/net/UidDetailProvider;

    invoke-direct {v3, v1}, Lcom/android/settings_exlib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settings_exlib/net/UidDetailProvider;

    .line 162
    const v3, 0x7f080020

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/datausage/DataUsageList;->addPreferencesFromResource(I)V

    .line 163
    const-string/jumbo v3, "usage_amount"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    .line 164
    const-string/jumbo v3, "chart_data"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    iput-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    .line 165
    const-string/jumbo v3, "apps_group"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 168
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "sub_id"

    const/4 v6, -0x1

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mSubId:I

    .line 169
    const-string/jumbo v3, "network_template"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    iput-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    .line 172
    const-string/jumbo v3, "chart_data_deprecated"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 171
    check-cast v3, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    iput-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    .line 173
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    iget-object v6, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 174
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v3, v7}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 177
    iget-object v6, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v3}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->setShowWifi(Z)V

    .line 178
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    iget v6, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mSubId:I

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/datausage/ChartDataUsagePreference;->setSubId(I)V

    .line 179
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    iget-object v6, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->setShowWifi(Z)V

    .line 180
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    iget v4, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mSubId:I

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;->setSubId(I)V

    .line 183
    const-string/jumbo v3, "usage_summary"

    invoke-virtual {p0, v3}, Lcom/android/settings_ex/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mUsageSummary:Landroid/support/v7/preference/Preference;

    .line 185
    invoke-static {v1}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->isDataSelectionEnable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mDataSelectionEnable:Z

    .line 186
    invoke-static {v1}, Lcom/android/settings_ex/datausage/BillingCycleSettings;->isShowDataUsage(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mShowDataUsage:Z

    .line 187
    iget-boolean v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mDataSelectionEnable:Z

    if-eqz v3, :cond_3

    .line 189
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 191
    iput-object v7, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChart:Lcom/android/settings_ex/datausage/ChartDataUsagePreference;

    .line 145
    :goto_2
    return-void

    .line 156
    .end local v0    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 157
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_1
    move v3, v5

    .line 177
    goto :goto_0

    :cond_2
    move v4, v5

    .line 179
    goto :goto_1

    .line 193
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    iget-object v4, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 195
    iput-object v7, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mChartDeprecated:Lcom/android/settings_ex/datausage/ChartDataUsageDeprecatedPreference;

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settings_exlib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings_exlib/net/UidDetailProvider;->clearCache()V

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settings_exlib/net/UidDetailProvider;

    .line 280
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 284
    invoke-super {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;->onDestroy()V

    .line 276
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Lcom/android/settings_ex/datausage/DataUsageBase;->onResume()V

    .line 247
    invoke-direct {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->updateBody()V

    .line 249
    new-instance v0, Lcom/android/settings_ex/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/datausage/DataUsageList$6;-><init>(Lcom/android/settings_ex/datausage/DataUsageList;)V

    .line 272
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 249
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/datausage/DataUsageList$6;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 201
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 203
    const v2, 0x7f04002d

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/datausage/DataUsageList;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mHeader:Landroid/view/View;

    .line 204
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v3, 0x7f1100ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    .line 207
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 208
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v3, 0x7f1100af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->tv_filter_datetime:Landroid/widget/TextView;

    .line 209
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mSubId:I

    invoke-static {v2, v3}, Lcom/android/settings_ex/datausage/OPDataUsageUtils;->getDataUsageSectionTimeMillByAccountDay(Landroid/content/Context;I)[J

    move-result-object v0

    .line 210
    .local v0, "section":[J
    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    aget-wide v6, v0, v8

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/settings_ex/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "sectionTextString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->tv_filter_datetime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    new-instance v2, Lcom/android/settings_ex/datausage/CycleAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/settings_ex/datausage/DataUsageList$5;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/datausage/DataUsageList$5;-><init>(Lcom/android/settings_ex/datausage/DataUsageList;)V

    .line 234
    iget-object v5, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 214
    invoke-direct {v2, v3, v4, v5, v8}, Lcom/android/settings_ex/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings_ex/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-object v2, p0, Lcom/android/settings_ex/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings_ex/datausage/CycleAdapter;

    .line 240
    invoke-virtual {p0, v8, v8}, Lcom/android/settings_ex/datausage/DataUsageList;->setLoading(ZZ)V

    .line 200
    return-void
.end method
