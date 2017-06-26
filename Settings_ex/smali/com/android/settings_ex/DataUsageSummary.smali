.class public Lcom/android/settings_ex/DataUsageSummary;
.super Lcom/android/settings_ex/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ex/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/DataUsageSummary$UidDetailTask;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmAppRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$DeniedRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmDataDisableFragment;,
        Lcom/android/settings_ex/DataUsageSummary$LimitEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$WarningEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$CycleEditorFragment;,
        Lcom/android/settings_ex/DataUsageSummary$ConfirmLimitFragment;,
        Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;,
        Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;,
        Lcom/android/settings_ex/DataUsageSummary$AppItem;,
        Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;,
        Lcom/android/settings_ex/DataUsageSummary$CycleChangeItem;,
        Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    }
.end annotation


# static fields
.field private static final DATA_USAGE_CYCLE_KEY:Ljava/lang/String; = "data_usage_cycle"

.field private static final DATA_USAGE_DISABLE_MOBILE_LIMIT_KEY:Ljava/lang/String; = "data_usage_disable_mobile_limit"

.field private static final DATA_USAGE_ENABLE_MOBILE_KEY:Ljava/lang/String; = "data_usage_enable_mobile"

.field public static final EXTRA_SHOW_APP_IMMEDIATE_PKG:Ljava/lang/String; = "showAppImmediatePkg"

.field public static final FROM_INSTALLEDAPPDETAILS:Ljava/lang/String; = "from_installedappdetails"

.field private static final LOADER_CHART_DATA:I = 0x2

.field private static final LOADER_SUMMARY:I = 0x3

.field private static final LOGD:Z = false

.field private static final PREF_FILE:Ljava/lang/String; = "data_usage"

.field private static final PREF_SHOW_ETHERNET:Ljava/lang/String; = "show_ethernet"

.field private static final PREF_SHOW_WIFI:Ljava/lang/String; = "show_wifi"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

.field private static final TAB_3G:Ljava/lang/String; = "3g"

.field private static final TAB_4G:Ljava/lang/String; = "4g"

.field private static final TAB_ETHERNET:Ljava/lang/String; = "ethernet"

.field private static final TAB_MOBILE:Ljava/lang/String; = "mobile"

.field private static final TAB_WIFI:Ljava/lang/String; = "wifi"

.field private static final TAG:Ljava/lang/String; = "DataUsage"

.field private static final TAG_APP_DETAILS:Ljava/lang/String; = "appDetails"

.field private static final TAG_CONFIRM_APP_RESTRICT:Ljava/lang/String; = "confirmAppRestrict"

.field private static final TAG_CONFIRM_DATA_DISABLE:Ljava/lang/String; = "confirmDataDisable"

.field private static final TAG_CONFIRM_LIMIT:Ljava/lang/String; = "confirmLimit"

.field private static final TAG_CONFIRM_RESTRICT:Ljava/lang/String; = "confirmRestrict"

.field private static final TAG_CYCLE_EDITOR:Ljava/lang/String; = "cycleEditor"

.field private static final TAG_DENIED_RESTRICT:Ljava/lang/String; = "deniedRestrict"

.field private static final TAG_LIMIT_EDITOR:Ljava/lang/String; = "limitEditor"

.field private static final TAG_WARNING_EDITOR:Ljava/lang/String; = "warningEditor"

.field private static final TEST_ANIM:Z = false

.field private static final TEST_RADIOS:Z = false

.field private static final TEST_RADIOS_PROP:Ljava/lang/String; = "test.radios"

.field private static final TEST_SUBSCRIBER_PROP:Ljava/lang/String; = "test.subscriberid"

.field private static mIsfromInstalledappdetails:Z

.field private static final sBuilder:Ljava/lang/StringBuilder;

.field private static final sFormatter:Ljava/util/Formatter;


# instance fields
.field private mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

.field private mAppBackground:Landroid/widget/TextView;

.field private mAppDetail:Landroid/view/View;

.field private mAppForeground:Landroid/widget/TextView;

.field private mAppIcon:Landroid/widget/ImageView;

.field private mAppRestrict:Landroid/widget/Switch;

.field private mAppRestrictListener:Landroid/view/View$OnClickListener;

.field private mAppRestrictView:Landroid/view/View;

.field private mAppSettings:Landroid/widget/Button;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mAppSwitches:Landroid/widget/LinearLayout;

.field private mAppTitles:Landroid/view/ViewGroup;

.field private mAppTotal:Landroid/widget/TextView;

.field private mBinding:Z

.field private mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

.field private mChartData:Lcom/android/settings_ex/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settings_ex/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

.field private mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

.field private mCurrentTab:Ljava/lang/String;

.field private mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSummary:Landroid/widget/TextView;

.field private mCycleView:Landroid/view/View;

.field private mDataEnabled:Landroid/widget/Switch;

.field private mDataEnabledListener:Landroid/view/View$OnClickListener;

.field private mDataEnabledSupported:Z

.field private mDataEnabledView:Landroid/view/View;

.field private mDetailedSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

.field private mDisableAtLimit:Landroid/widget/Switch;

.field private mDisableAtLimitListener:Landroid/view/View$OnClickListener;

.field private mDisableAtLimitSupported:Z

.field private mDisableAtLimitView:Landroid/view/View;

.field private mDisclaimer:Landroid/view/View;

.field private mEmpty:Landroid/widget/TextView;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mHeader:Landroid/view/ViewGroup;

.field private mInsetSide:I

.field private mIntentTab:Ljava/lang/String;

.field private mListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mListView:Lcom/oneplus/widget/listview/OPListView;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

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

.field private mMobileTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

.field private mShowAppImmediatePkg:Ljava/lang/String;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

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

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->mIsfromInstalledappdetails:Z

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1588
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    .line 2718
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$14;

    invoke-direct {v0}, Lcom/android/settings_ex/DataUsageSummary$14;-><init>()V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings_ex/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/HighlightingFragment;-><init>()V

    .line 228
    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    .line 263
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 264
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 269
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 275
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 276
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    .line 791
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$3;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 815
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$4;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1286
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$6;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 1308
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$7;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1322
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$8;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1338
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$9;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1352
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$10;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1452
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$11;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1483
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$12;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1526
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$13;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2437
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/UidDetailProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings_ex/net/ChartData;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/DataUsageSummary;)Lcom/oneplus/widget/listview/OPListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/DataUsageSummary;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/DataUsageSummary;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(IZ)V

    return-void
.end method

.method private addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subInfo"    # Landroid/telephony/SubscriptionInfo;
    .param p3, "isMultiSim"    # Z

    .prologue
    .line 2758
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2759
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2760
    if-eqz p3, :cond_1

    .line 2761
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 2771
    :cond_0
    :goto_0
    return-void

    .line 2764
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v2, 0x7f0c0af5

    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 735
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 739
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 740
    return-object v0
.end method

.method private buildLimitedNetworksList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2649
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2652
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2654
    .local v1, "limited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 2655
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 2656
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2657
    .local v2, "subscriberId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2658
    const v4, 0x7f0c0af8

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2660
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2661
    const v4, 0x7f0c0af7

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2663
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2664
    const v4, 0x7f0c0af6

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2668
    .end local v2    # "subscriberId":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2669
    const v4, 0x7f0c0af3

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2671
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2672
    const v4, 0x7f0c0af4

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2675
    :cond_4
    return-object v1
.end method

.method private buildLimitedNetworksString()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2633
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    .line 2636
    .local v0, "limited":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2637
    const v1, 0x7f0c0af9

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2640
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method private buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "titleRes"    # I

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private static computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 2409
    const-string v3, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 2410
    .local v1, "template":Landroid/net/NetworkTemplate;
    if-nez v1, :cond_1

    .line 2411
    const-string v3, "subscription"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2413
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2429
    .end local v0    # "subId":I
    :cond_0
    :goto_0
    return-object v2

    .line 2419
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2425
    :pswitch_0
    const-string v2, "mobile"

    goto :goto_0

    .line 2421
    :pswitch_1
    const-string v2, "3g"

    goto :goto_0

    .line 2423
    :pswitch_2
    const-string v2, "4g"

    goto :goto_0

    .line 2427
    :pswitch_3
    const-string v2, "wifi"

    goto :goto_0

    .line 2419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private ensureLayoutTransitions()V
    .locals 3

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-nez v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 725
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 726
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 728
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 729
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 730
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 731
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 1592
    const v8, 0x10010

    .line 1594
    .local v8, "flags":I
    sget-object v9, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 1595
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1596
    sget-object v1, Lcom/android/settings_ex/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 1598
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1512
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 1513
    .local v2, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1514
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string v3, "test.subscriberid"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1516
    .local v1, "retVal":Ljava/lang/String;
    return-object v1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1520
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1521
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 1523
    .local v0, "retVal":Ljava/lang/String;
    return-object v0
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1157
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 1158
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1159
    .local v1, "uidPolicy":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2774
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    if-eqz v5, :cond_1

    .line 2775
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 2776
    .local v0, "currentTagIndex":I
    const/4 v1, 0x0

    .line 2777
    .local v1, "i":I
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 2778
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {p1, v5}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2779
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-ne v1, v0, :cond_2

    .line 2785
    .end local v0    # "currentTagIndex":I
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .restart local v0    # "currentTagIndex":I
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method private getSubId(Ljava/lang/String;)I
    .locals 6
    .param p1, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 2811
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 2812
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2813
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2814
    .local v2, "subId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2815
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2820
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "subId":Ljava/lang/Integer;
    :goto_0
    return v3

    .line 2819
    :cond_1
    const-string v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentTab = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " non mobile tab called this function"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    .line 2624
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasReadyMobile4gRadio(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2553
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2502
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2503
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    .line 2505
    .local v6, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    .line 2508
    .local v5, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v5, :cond_0

    .line 2525
    :goto_0
    return v9

    .line 2513
    :cond_0
    const/4 v2, 0x1

    .line 2514
    .local v2, "isReady":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 2515
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v10, 0x5

    if-ne v7, v10, :cond_1

    move v7, v8

    :goto_2
    and-int/2addr v2, v7

    .line 2517
    goto :goto_1

    :cond_1
    move v7, v9

    .line 2515
    goto :goto_2

    .line 2518
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    move v3, v8

    .local v3, "retVal":Z
    :goto_3
    move v9, v3

    .line 2525
    goto :goto_0

    .end local v3    # "retVal":Z
    :cond_3
    move v3, v9

    .line 2518
    goto :goto_3
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2536
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2537
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 2538
    .local v4, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    .line 2539
    .local v3, "slotId":I
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    move v1, v5

    .line 2541
    .local v1, "isReady":Z
    :goto_0
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v1, :cond_1

    move v2, v5

    .line 2545
    .local v2, "retVal":Z
    :goto_1
    return v2

    .end local v1    # "isReady":Z
    .end local v2    # "retVal":Z
    :cond_0
    move v1, v6

    .line 2539
    goto :goto_0

    .restart local v1    # "isReady":Z
    :cond_1
    move v2, v6

    .line 2541
    goto :goto_1
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2576
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2577
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 2613
    const v2, 0x7f0400c3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2614
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2616
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2617
    return-object v0
.end method

.method private initMobileTabTag(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2794
    .local p1, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v1, 0x0

    .line 2795
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 2797
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2798
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 2799
    .local v3, "subInfo":Landroid/telephony/SubscriptionInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2800
    .local v2, "mobileTag":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2803
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "mobileTag":Ljava/lang/String;
    .end local v3    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :cond_0
    return-object v1
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    .line 2683
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2684
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2688
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2689
    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2690
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2692
    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2693
    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2694
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1144
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1147
    :goto_0
    return v1

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFromInstalledappdetails()Z
    .locals 1

    .prologue
    .line 301
    sget-boolean v0, Lcom/android/settings_ex/DataUsageSummary;->mIsfromInstalledappdetails:Z

    return v0
.end method

.method private isMobileDataAvailable(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 2824
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1101
    const/4 v0, 0x0

    .line 1102
    .local v0, "isEnable":Z
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1105
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1110
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    :goto_0
    return v0

    .line 1113
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method private static isMobileTab(Ljava/lang/String;)Z
    .locals 1
    .param p0, "currentTab"    # Ljava/lang/String;

    .prologue
    .line 2807
    if-eqz p0, :cond_0

    const-string v0, "mobile"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1138
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1164
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 1165
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1167
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1168
    return-void

    .line 1165
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(IZ)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1124
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 1125
    .local v1, "dataSubId":I
    if-eq p1, v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 1126
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 1133
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    invoke-direct {p0, v3}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 1135
    return-void

    .line 1129
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1130
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobile_data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 1096
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 1097
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 1090
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 1091
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 2710
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2711
    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2712
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2713
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 2701
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2702
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2703
    return-void
.end method

.method private showRequestedAppIfNeeded(Landroid/view/View;)V
    .locals 12
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x1

    .line 489
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 519
    :goto_0
    return-void

    .line 494
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v6

    .line 495
    .local v6, "uid":I
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    invoke-direct {v0, v6}, Lcom/android/settings_ex/DataUsageSummary$AppItem;-><init>(I)V

    .line 496
    .local v0, "app":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-virtual {v0, v6}, Lcom/android/settings_ex/DataUsageSummary$AppItem;->addUid(I)V

    .line 498
    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_1

    .line 499
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    iget v8, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/android/settings_ex/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings_ex/net/UidDetail;

    move-result-object v2

    .line 510
    .local v2, "detail":Lcom/android/settings_ex/net/UidDetail;
    :goto_1
    const v7, 0x7f12007f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 511
    .local v4, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, v2, Lcom/android/settings_ex/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v9, v2, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10, v4}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/view/ViewGroup;)V

    .line 512
    iget-object v7, v2, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    const/4 v8, 0x1

    invoke-static {p0, v0, v7, v8}, Lcom/android/settings_ex/DataUsageSummary$AppDetailsFragment;->show(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    .end local v0    # "app":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .end local v2    # "detail":Lcom/android/settings_ex/net/UidDetail;
    .end local v4    # "pinnedHeader":Landroid/widget/FrameLayout;
    .end local v6    # "uid":I
    :catch_0
    move-exception v3

    .line 514
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "DataUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0c0d20

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 517
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 501
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "app":Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .restart local v6    # "uid":I
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 502
    .local v5, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    const/16 v8, 0x80

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 503
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Lcom/android/settings_ex/net/UidDetail;

    invoke-direct {v2}, Lcom/android/settings_ex/net/UidDetail;-><init>()V

    .line 504
    .restart local v2    # "detail":Lcom/android/settings_ex/net/UidDetail;
    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 505
    invoke-virtual {v5, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v2, Lcom/android/settings_ex/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateAppDetail()V
    .locals 25

    .prologue
    .line 964
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 965
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 966
    .local v19, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    .line 968
    .local v12, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setVisibility(I)V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    move/from16 v21, v0

    .line 989
    .local v21, "uid":I
    const/16 v22, 0x3e8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings_ex/net/UidDetail;

    move-result-object v8

    .line 1003
    .local v8, "detail":Lcom/android/settings_ex/net/UidDetail;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    iget-object v0, v8, Lcom/android/settings_ex/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1007
    const/16 v20, 0x0

    .line 1008
    .local v20, "title":Landroid/view/View;
    iget-object v0, v8, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 1009
    iget-object v0, v8, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v16, v0

    .line 1010
    .local v16, "n":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v10, v0, :cond_3

    .line 1011
    iget-object v0, v8, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    aget-object v13, v22, v10

    .line 1012
    .local v13, "label":Ljava/lang/CharSequence;
    iget-object v0, v8, Lcom/android/settings_ex/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    aget-object v6, v22, v10

    .line 1013
    .local v6, "contentDescription":Ljava/lang/CharSequence;
    const v22, 0x7f04003d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 1014
    const v22, 0x7f120069

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1015
    .local v4, "appTitle":Landroid/widget/TextView;
    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1010
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 973
    .end local v4    # "appTitle":Landroid/widget/TextView;
    .end local v6    # "contentDescription":Ljava/lang/CharSequence;
    .end local v8    # "detail":Lcom/android/settings_ex/net/UidDetail;
    .end local v10    # "i":I
    .end local v13    # "label":Ljava/lang/CharSequence;
    .end local v16    # "n":I
    .end local v20    # "title":Landroid/view/View;
    .end local v21    # "uid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setVisibility(I)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 1085
    :goto_2
    return-void

    .line 993
    .restart local v21    # "uid":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x80

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 994
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v8, Lcom/android/settings_ex/net/UidDetail;

    invoke-direct {v8}, Lcom/android/settings_ex/net/UidDetail;-><init>()V

    .line 995
    .restart local v8    # "detail":Lcom/android/settings_ex/net/UidDetail;
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    .line 996
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v8, Lcom/android/settings_ex/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 997
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "detail":Lcom/android/settings_ex/net/UidDetail;
    :catch_0
    move-exception v9

    .line 998
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings_ex/net/UidDetail;

    move-result-object v8

    .line 999
    .restart local v8    # "detail":Lcom/android/settings_ex/net/UidDetail;
    const-string v22, "DataUsage"

    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1020
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v20    # "title":Landroid/view/View;
    :cond_2
    const v22, 0x7f04003d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v12, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    .line 1021
    const v22, 0x7f120069

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1022
    .restart local v4    # "appTitle":Landroid/widget/TextView;
    iget-object v0, v8, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v0, v8, Lcom/android/settings_ex/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1028
    .end local v4    # "appTitle":Landroid/widget/TextView;
    :cond_3
    if-eqz v20, :cond_5

    .line 1029
    const v22, 0x7f12006a

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    .line 1035
    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v18

    .line 1036
    .local v18, "packageNames":[Ljava/lang/String;
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_7

    .line 1037
    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "android.intent.category.DEFAULT"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    const/4 v15, 0x0

    .line 1042
    .local v15, "matchFound":Z
    move-object/from16 v5, v18

    .local v5, "arr$":[Ljava/lang/String;
    array-length v14, v5

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_4
    if-ge v11, v14, :cond_4

    aget-object v17, v5, v11

    .line 1043
    .local v17, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v22

    if-eqz v22, :cond_6

    .line 1045
    const/4 v15, 0x1

    .line 1050
    .end local v17    # "packageName":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v22, v0

    new-instance v23, Lcom/android/settings_ex/DataUsageSummary$5;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$5;-><init>(Lcom/android/settings_ex/DataUsageSummary;I)V

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    .line 1071
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "matchFound":Z
    :goto_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    .line 1073
    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v22

    if-nez v22, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v22

    if-eqz v22, :cond_8

    invoke-static {v7}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0c0b00

    invoke-static/range {v22 .. v23}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v22, v0

    const v23, 0x7f0c0b01

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_2

    .line 1031
    .end local v18    # "packageNames":[Ljava/lang/String;
    :cond_5
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_3

    .line 1042
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "matchFound":Z
    .restart local v17    # "packageName":Ljava/lang/String;
    .restart local v18    # "packageNames":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 1066
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "matchFound":Z
    .end local v17    # "packageName":Ljava/lang/String;
    :cond_7
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_5

    .line 1083
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-virtual/range {v22 .. v23}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method private updateBody()V
    .locals 24

    .prologue
    .line 829
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 830
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 953
    :goto_0
    return-void

    .line 832
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 833
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 834
    .local v14, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v9

    .line 835
    .local v9, "currentTab":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v12, 0x1

    .line 837
    .local v12, "isOwner":Z
    :goto_1
    if-nez v9, :cond_2

    .line 838
    const-string v2, "DataUsage"

    const-string v3, "no tab selected; hiding body"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/listview/OPListView;->setVisibility(I)V

    goto :goto_0

    .line 835
    .end local v12    # "isOwner":Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_1

    .line 842
    .restart local v12    # "isOwner":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/widget/listview/OPListView;->setVisibility(I)V

    .line 845
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 849
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 850
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 856
    invoke-static {v9}, Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x7f0c0afa

    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v3, 0x7f0c0aef

    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 860
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings_ex/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataAvailable(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 864
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings_ex/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v2

    invoke-static {v8, v2}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 902
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->read()V

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v13

    .line 904
    .local v13, "policy":Landroid/net/NetworkPolicy;
    if-eqz v13, :cond_3

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 906
    .local v10, "currentTime":J
    invoke-static {v10, v11, v13}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    .line 907
    .local v4, "start":J
    move-wide v6, v10

    .line 908
    .local v6, "end":J
    const-wide/16 v20, 0x0

    .line 911
    .local v20, "totalBytes":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    iget-object v3, v13, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-interface/range {v2 .. v7}, Landroid/net/INetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v20

    .line 916
    :goto_3
    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-wide v2, v13, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x7f0c0ae4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 929
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v10    # "currentTime":J
    .end local v20    # "totalBytes":J
    :cond_3
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Lcom/android/settings_ex/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v2, v3, v0, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 935
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 937
    const v2, 0x7f0e0042

    invoke-virtual {v8, v2}, Landroid/content/Context;->getColor(I)I

    move-result v16

    .line 938
    .local v16, "seriesColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "mobile"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_4

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v3, "mobile"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 941
    .local v18, "slotId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v17

    .line 944
    .local v17, "sir":Landroid/telephony/SubscriptionInfo;
    if-eqz v17, :cond_4

    .line 945
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v16

    .line 949
    .end local v17    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v18    # "slotId":I
    :cond_4
    const/16 v2, 0x7f

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->green(I)I

    move-result v22

    invoke-static/range {v16 .. v16}, Landroid/graphics/Color;->blue(I)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v15

    .line 951
    .local v15, "secondaryColor":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    const/high16 v3, -0x1000000

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v15}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDetailedSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    const/high16 v3, -0x1000000

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v15}, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;->setChartColor(III)V

    goto/16 :goto_0

    .line 869
    .end local v13    # "policy":Landroid/net/NetworkPolicy;
    .end local v15    # "secondaryColor":I
    .end local v16    # "seriesColor":I
    :cond_5
    const-string v2, "3g"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x7f0c0afb

    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v3, 0x7f0c0af1

    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 874
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 876
    :cond_6
    const-string v2, "4g"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x7f0c0afc

    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 879
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v3, 0x7f0c0af0

    invoke-static {v2, v3}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 881
    invoke-static {v8}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 883
    :cond_7
    const-string v2, "wifi"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 886
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 887
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 888
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 890
    :cond_8
    const-string v2, "ethernet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 893
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 894
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 895
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 899
    :cond_9
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "unknown tab: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 920
    .restart local v4    # "start":J
    .restart local v6    # "end":J
    .restart local v10    # "currentTime":J
    .restart local v13    # "policy":Landroid/net/NetworkPolicy;
    .restart local v20    # "totalBytes":J
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 922
    .local v19, "summary":Landroid/widget/TextView;
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 913
    .end local v19    # "summary":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 912
    :catch_1
    move-exception v2

    goto/16 :goto_3
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 25
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .line 1221
    .local v17, "previousItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->clear()V

    .line 1223
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1225
    .local v5, "context":Landroid/content/Context;
    const-wide v20, 0x7fffffffffffffffL

    .line 1226
    .local v20, "historyStart":J
    const-wide/high16 v18, -0x8000000000000000L

    .line 1227
    .local v18, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v4, :cond_0

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v4, v4, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    .line 1229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v4, v4, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    .line 1232
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1233
    .local v22, "now":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v20, v10

    if-nez v4, :cond_1

    move-wide/from16 v20, v22

    .line 1234
    :cond_1
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v4, v18, v10

    if-nez v4, :cond_2

    const-wide/16 v10, 0x1

    add-long v18, v22, v10

    .line 1236
    :cond_2
    const/16 v16, 0x0

    .line 1237
    .local v16, "hasCycles":Z
    if-eqz p1, :cond_4

    .line 1239
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1242
    .local v8, "cycleEnd":J
    :goto_0
    cmp-long v4, v8, v20

    if-lez v4, :cond_3

    .line 1243
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1244
    .local v6, "cycleStart":J
    const-string v4, "DataUsage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "generating cs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to ce="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " waiting for hs="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v20

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1247
    move-wide v8, v6

    .line 1248
    const/16 v16, 0x1

    .line 1249
    goto :goto_0

    .line 1252
    .end local v6    # "cycleStart":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1255
    .end local v8    # "cycleEnd":J
    :cond_4
    if-nez v16, :cond_6

    .line 1257
    move-wide/from16 v8, v18

    .line 1258
    .restart local v8    # "cycleEnd":J
    :goto_1
    cmp-long v4, v8, v20

    if-lez v4, :cond_5

    .line 1259
    const-wide v10, 0x90321000L

    sub-long v6, v8, v10

    .line 1260
    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1261
    move-wide v8, v6

    .line 1262
    goto :goto_1

    .line 1264
    .end local v6    # "cycleStart":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1268
    .end local v8    # "cycleEnd":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 1269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings_ex/DataUsageSummary$CycleItem;)I

    move-result v13

    .line 1270
    .local v13, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v13}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .line 1275
    .local v24, "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1276
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-interface/range {v10 .. v15}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1284
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :goto_2
    return-void

    .line 1279
    .restart local v13    # "position":I
    .restart local v24    # "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_2

    .line 1282
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_2
.end method

.method private updateDetailData()V
    .locals 26

    .prologue
    .line 1393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .line 1394
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .line 1395
    .local v6, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1397
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1399
    .local v2, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 1400
    .local v10, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_2

    .line 1402
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1403
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v12, v14

    .line 1404
    .local v20, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1405
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v12, v14

    .line 1406
    .local v22, "foregroundBytes":J
    add-long v24, v20, v22

    .line 1408
    .local v24, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1411
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v11, v3, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1417
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1433
    .end local v20    # "defaultBytes":J
    .end local v22    # "foregroundBytes":J
    .end local v24    # "totalBytes":J
    :goto_0
    if-eqz v10, :cond_4

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v12, v14

    .line 1434
    .restart local v24    # "totalBytes":J
    :goto_1
    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 1435
    .local v19, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "3g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "4g"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1439
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1449
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1450
    return-void

    .line 1422
    .end local v19    # "totalPhrase":Ljava/lang/String;
    .end local v24    # "totalBytes":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v3, :cond_3

    .line 1423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v11, v3, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1426
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1429
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v12, v4, v5, v6, v7}, Lcom/android/settings_ex/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v3, v11, v12, v13}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1433
    :cond_4
    const-wide/16 v24, 0x0

    goto :goto_1

    .line 1442
    .restart local v19    # "totalPhrase":Ljava/lang/String;
    .restart local v24    # "totalBytes":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1445
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateMenuTitles()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0c0ada

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 638
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_1

    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0c0add

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 644
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_2

    .line 645
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0c0adf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 649
    :goto_2
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f0c0ad9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 641
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f0c0adc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 647
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f0c0ade

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updatePolicy(Z)V
    .locals 12
    .param p1, "refreshCycle"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1175
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 1176
    .local v0, "dataEnabledVisible":Z
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 1178
    .local v1, "disableAtLimitVisible":Z
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1179
    const/4 v0, 0x0

    .line 1180
    const/4 v1, 0x0

    .line 1184
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->isMobileTab(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1185
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 1186
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1187
    iput-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 1190
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 1192
    .local v2, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->getSubId(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1193
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v2, :cond_4

    iget-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1194
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1195
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1204
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    if-eqz v0, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_7

    :goto_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    if-eqz p1, :cond_3

    .line 1209
    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1211
    :cond_3
    return-void

    :cond_4
    move v3, v4

    .line 1193
    goto :goto_0

    .line 1200
    :cond_5
    const/4 v1, 0x0

    .line 1201
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1

    :cond_6
    move v3, v5

    .line 1204
    goto :goto_2

    :cond_7
    move v4, v5

    .line 1205
    goto :goto_3
.end method

.method private updateTabs()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 749
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 750
    .local v0, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 752
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 754
    .local v4, "simCount":I
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v6

    .line 755
    .local v6, "sirs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v6, :cond_1

    .line 756
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    .line 757
    .local v5, "sir":Landroid/telephony/SubscriptionInfo;
    if-le v4, v8, :cond_0

    move v7, v8

    :goto_1
    invoke-direct {p0, v0, v5, v7}, Lcom/android/settings_ex/DataUsageSummary;->addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V

    goto :goto_0

    :cond_0
    move v7, v9

    goto :goto_1

    .line 761
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "sir":Landroid/telephony/SubscriptionInfo;
    :cond_1
    iget-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-eqz v7, :cond_2

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 762
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "wifi"

    const v11, 0x7f0c0af3

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 765
    :cond_2
    iget-boolean v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-eqz v7, :cond_3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 766
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "ethernet"

    const v11, 0x7f0c0af4

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 769
    :cond_3
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-nez v7, :cond_5

    move v3, v8

    .line 770
    .local v3, "noTabs":Z
    :goto_2
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v7

    if-le v7, v8, :cond_6

    move v2, v8

    .line 771
    .local v2, "multipleTabs":Z
    :goto_3
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v2, :cond_7

    :goto_4
    invoke-virtual {v7, v9}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 772
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v7, :cond_9

    .line 773
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 775
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    .line 779
    :goto_5
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 786
    :cond_4
    :goto_6
    return-void

    .end local v2    # "multipleTabs":Z
    .end local v3    # "noTabs":Z
    :cond_5
    move v3, v9

    .line 769
    goto :goto_2

    .restart local v3    # "noTabs":Z
    :cond_6
    move v2, v9

    .line 770
    goto :goto_3

    .line 771
    .restart local v2    # "multipleTabs":Z
    :cond_7
    const/16 v9, 0x8

    goto :goto_4

    .line 777
    :cond_8
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_5

    .line 780
    :cond_9
    if-eqz v3, :cond_4

    .line 782
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    goto :goto_6
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 311
    const/16 v0, 0x25

    return v0
.end method

.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2588
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2589
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2592
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2594
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2605
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2597
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 2598
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2601
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 2605
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 316
    invoke-super {p0, p1}, Lcom/android/settings_ex/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 319
    .local v1, "context":Landroid/content/Context;
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 321
    const-string v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 323
    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 324
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 325
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 327
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "data_usage"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 329
    new-instance v3, Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v3, v4}, Lcom/android/settings_ex/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    .line 330
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->read()V

    .line 332
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    .line 333
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubInfoList:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/DataUsageSummary;->initMobileTabTag(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileTagMap:Ljava/util/Map;

    .line 336
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 337
    const-string v3, "DataUsage"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v3}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_wifi"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 352
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "show_ethernet"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 355
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 356
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 357
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 360
    :cond_1
    new-instance v3, Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-direct {v3, v1}, Lcom/android/settings_ex/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 362
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 363
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 364
    const-string v3, "showAppImmediatePkg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowAppImmediatePkg:Ljava/lang/String;

    .line 365
    const-string v3, "from_installedappdetails"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/settings_ex/DataUsageSummary;->mIsfromInstalledappdetails:Z

    .line 368
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 369
    return-void

    .line 340
    .end local v0    # "arguments":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    .line 341
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "DataUsage"

    const-string v4, "No bandwidth control; leaving"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 347
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 348
    .restart local v2    # "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 570
    const v0, 0x7f140001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 571
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x7f120000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 375
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 376
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f040047

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 379
    .local v3, "view":Landroid/view/View;
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 380
    const v4, 0x7f12007e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 381
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 382
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/widget/listview/OPListView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    .line 386
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    invoke-virtual {v4}, Lcom/oneplus/widget/listview/OPListView;->getScrollBarStyle()I

    move-result v4

    const/high16 v7, 0x2000000

    if-ne v4, v7, :cond_1

    move v1, v5

    .line 388
    .local v1, "shouldInset":Z
    :goto_0
    iput v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    .line 391
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    invoke-static {p2, v3, v4, v6}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 393
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 394
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 396
    const v4, 0x7f040045

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 397
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 399
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v10, v5}, Lcom/oneplus/widget/listview/OPListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 400
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v10, v5}, Lcom/oneplus/widget/listview/OPListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 401
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/listview/OPListView;->setItemsCanFocus(Z)V

    .line 403
    iget v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    if-lez v4, :cond_0

    .line 405
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    iget v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-static {v4, v7}, Lcom/android/settings_ex/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 406
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    iget v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v4, v7, v6, v8, v6}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 411
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f12007a

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 413
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f12007b

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 415
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 416
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 417
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 418
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 419
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const-string v7, "data_usage_enable_mobile"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 421
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 422
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 423
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    .line 427
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 428
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 429
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 430
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const-string v7, "data_usage_disable_mobile_limit"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 432
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 433
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 434
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 437
    const v4, 0x7f040043

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 438
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    const-string v7, "data_usage_cycle"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 439
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f120073

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 440
    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    .line 441
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 442
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 443
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f120074

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    .line 444
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    const v4, 0x7f12006e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    .line 446
    const v4, 0x7f12006f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDetailedSeries:Lcom/android/settings_ex/widget/ChartNetworkSeriesView;

    .line 449
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f12006c

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/widget/ChartDataUsageView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    .line 450
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v4, v7}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 451
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 455
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f120075

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 456
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120013

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 457
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120076

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 458
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120077

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 459
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120078

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 460
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120079

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 462
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f120015

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 464
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    .line 465
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 466
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 467
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-static {p1, v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 468
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 469
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 470
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 474
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f12007c

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    .line 475
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 476
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f12007d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    .line 478
    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 479
    .local v2, "um":Landroid/os/UserManager;
    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    iget v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-direct {v4, v2, v5, v6}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/android/settings_ex/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    .line 480
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/listview/OPListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 481
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Lcom/oneplus/widget/listview/OPListView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v4, v5}, Lcom/oneplus/widget/listview/OPListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 483
    invoke-direct {p0, v3}, Lcom/android/settings_ex/DataUsageSummary;->showRequestedAppIfNeeded(Landroid/view/View;)V

    .line 485
    return-object v3

    .end local v1    # "shouldInset":Z
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_1
    move v1, v6

    .line 386
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 701
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 702
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 704
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings_ex/net/UidDetailProvider;->clearCache()V

    .line 705
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 707
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 709
    invoke-super {p0}, Lcom/android/settings_ex/HighlightingFragment;->onDestroy()V

    .line 710
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 653
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v9, v6

    .line 696
    :goto_0
    :pswitch_0
    return v9

    .line 655
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v9

    .line 656
    .local v8, "restrictBackground":Z
    :goto_1
    if-eqz v8, :cond_1

    .line 657
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0

    .end local v8    # "restrictBackground":Z
    :cond_0
    move v8, v6

    .line 655
    goto :goto_1

    .line 660
    .restart local v8    # "restrictBackground":Z
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 665
    .end local v8    # "restrictBackground":Z
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-nez v1, :cond_2

    move v6, v9

    :cond_2
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 666
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 667
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateMenuTitles()V

    .line 668
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 672
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-nez v1, :cond_3

    move v6, v9

    :cond_3
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 673
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 674
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateMenuTitles()V

    .line 675
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 683
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 684
    .local v7, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 686
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 690
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 691
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0c0b1b

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x7f120307
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 575
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 576
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 577
    .local v0, "appDetailMode":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-nez v8, :cond_1

    move v4, v6

    .line 579
    .local v4, "isOwner":Z
    :goto_0
    const v8, 0x7f120308

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    .line 580
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 581
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    move v8, v6

    :goto_1
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 586
    :goto_2
    const v8, 0x7f120309

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    .line 587
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 588
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-nez v0, :cond_4

    move v8, v6

    :goto_3
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 593
    :goto_4
    const v8, 0x7f120307

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 594
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    move v8, v6

    :goto_5
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 597
    const v8, 0x7f12030a

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 598
    .local v5, "metered":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 599
    :cond_0
    if-nez v0, :cond_7

    :goto_6
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 605
    :goto_7
    const v6, 0x7f12030b

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    .line 606
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 608
    const v6, 0x7f12030c

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    .line 612
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 614
    const v6, 0x7f12030d

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 616
    .local v2, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0c0bc8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "helpUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 617
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v2, v3, v8}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z

    .line 622
    :goto_8
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateMenuTitles()V

    .line 625
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 626
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 627
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 629
    return-void

    .end local v2    # "help":Landroid/view/MenuItem;
    .end local v3    # "helpUrl":Ljava/lang/String;
    .end local v4    # "isOwner":Z
    .end local v5    # "metered":Landroid/view/MenuItem;
    :cond_1
    move v4, v7

    .line 577
    goto/16 :goto_0

    .restart local v4    # "isOwner":Z
    :cond_2
    move v8, v7

    .line 581
    goto/16 :goto_1

    .line 583
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_4
    move v8, v7

    .line 588
    goto/16 :goto_3

    .line 590
    :cond_5
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_6
    move v8, v7

    .line 594
    goto/16 :goto_5

    .restart local v5    # "metered":Landroid/view/MenuItem;
    :cond_7
    move v6, v7

    .line 599
    goto :goto_6

    .line 601
    :cond_8
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 619
    .restart local v2    # "help":Landroid/view/MenuItem;
    .restart local v3    # "helpUrl":Ljava/lang/String;
    :cond_9
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_8
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 536
    invoke-super {p0}, Lcom/android/settings_ex/HighlightingFragment;->onResume()V

    .line 538
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DataUsageSummary$1;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 546
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$2;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 566
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 523
    invoke-super {p0, p1}, Lcom/android/settings_ex/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 526
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 527
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 531
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    .line 532
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1153
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateMenuTitles()V

    .line 1154
    return-void
.end method
