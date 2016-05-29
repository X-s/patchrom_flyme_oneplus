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

.field private static final TAB_SIM:Ljava/lang/String; = "SIM"

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

.field private mListView:Landroid/widget/ListView;

.field private mMenuCellularNetworks:Landroid/view/MenuItem;

.field private mMenuRestrictBackground:Landroid/view/MenuItem;

.field private mMenuShowEthernet:Landroid/view/MenuItem;

.field private mMenuShowWifi:Landroid/view/MenuItem;

.field private mMenuSimCards:Landroid/view/MenuItem;

.field private mMobileDataEnabled:Ljava/lang/Boolean;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mNetworkSwitches:Landroid/widget/LinearLayout;

.field private mNetworkSwitchesContainer:Landroid/view/ViewGroup;

.field private mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mShowEthernet:Z

.field private mShowWifi:Z

.field private mStatsService:Landroid/net/INetworkStatsService;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStupidPadding:Landroid/view/View;

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
    .line 1467
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    .line 1468
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings_ex/DataUsageSummary;->sFormatter:Ljava/util/Formatter;

    .line 2571
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

    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/HighlightingFragment;-><init>()V

    .line 215
    iput v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    .line 250
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 251
    iput-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 256
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 262
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 263
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 735
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$3;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    .line 755
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$4;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$4;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1168
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$6;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    .line 1189
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$7;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$7;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    .line 1203
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$8;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    .line 1219
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$9;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$9;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1237
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$10;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$10;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1337
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$11;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$11;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1368
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$12;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$12;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1407
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$13;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$13;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    .line 2318
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyLimitBytes(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setAppRestrictBackground(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/UidDetailProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/widget/ChartDataUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/ChartData;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/net/ChartData;)Lcom/android/settings_ex/net/ChartData;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings_ex/net/ChartData;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateAppDetail()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/DataUsageSummary;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # J

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/DataUsageSummary;->setPolicyWarningBytes(J)V

    return-void
.end method

.method static synthetic access$2700(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/LayoutInflater;
    .param p1, "x1"    # Landroid/view/ViewGroup;

    .prologue
    .line 158
    invoke-static {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/settings_ex/DataUsageSummary;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/DataUsageSummary;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings_ex/DataUsageSummary;)Lcom/android/settings_ex/net/NetworkPolicyEditor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/DataUsageSummary;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/DataUsageSummary;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->setMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/DataUsageSummary;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;
    .param p1, "x1"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/DataUsageSummary;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    return-object v0
.end method

.method private static buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 666
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 670
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 671
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
    .line 2502
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2505
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2507
    .local v1, "limited":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 2508
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 2509
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2510
    .local v2, "subscriberId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2511
    const v4, 0x7f090951

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2513
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2514
    const v4, 0x7f090950

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2516
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2517
    const v4, 0x7f09094f

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2521
    .end local v2    # "subscriberId":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2522
    const v4, 0x7f09094b

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2524
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->hasLimitedPolicy(Landroid/net/NetworkTemplate;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2525
    const v4, 0x7f09094c

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2528
    :cond_4
    return-object v1
.end method

.method private buildLimitedNetworksString()Ljava/lang/CharSequence;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2486
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->buildLimitedNetworksList()Ljava/util/List;

    move-result-object v0

    .line 2489
    .local v0, "limited":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2490
    const v1, 0x7f090952

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2493
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
    .line 746
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

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 751
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
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 2297
    const-string v2, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2298
    .local v0, "template":Landroid/net/NetworkTemplate;
    if-nez v0, :cond_0

    .line 2310
    :goto_0
    return-object v1

    .line 2300
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2306
    :pswitch_0
    const-string v1, "mobile"

    goto :goto_0

    .line 2302
    :pswitch_1
    const-string v1, "3g"

    goto :goto_0

    .line 2304
    :pswitch_2
    const-string v1, "4g"

    goto :goto_0

    .line 2308
    :pswitch_3
    const-string v1, "wifi"

    goto :goto_0

    .line 2300
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
    .line 653
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v1}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 663
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 656
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 657
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 659
    invoke-static {}, Lcom/android/settings_ex/DataUsageSummary;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 660
    .local v0, "chartTransition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 661
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 662
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
    .line 1472
    const v8, 0x10010

    .line 1474
    .local v8, "flags":I
    sget-object v9, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 1475
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/DataUsageSummary;->sBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1476
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

    .line 1478
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(I)Ljava/lang/String;
    .locals 3
    .param p0, "phoneId"    # I

    .prologue
    .line 1403
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1404
    .local v0, "subId":[I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1397
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 1398
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1399
    .local v0, "actualSubscriberId":Ljava/lang/String;
    const-string v2, "test.subscriberid"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAppRestrictBackground()Z
    .locals 3

    .prologue
    .line 1037
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v0, v2, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 1038
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v1

    .line 1039
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

.method private getSubTag(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 2613
    if-gtz p1, :cond_0

    .line 2614
    const-string v0, ""

    .line 2616
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 2622
    if-gtz p1, :cond_0

    .line 2623
    const-string v0, ""

    .line 2625
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f09094e

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasLimitedNetworks()Z
    .locals 1

    .prologue
    .line 2477
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
    .line 2398
    const/4 v0, 0x0

    return v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 2383
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2384
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 2387
    .local v3, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    .line 2388
    .local v1, "defaultSubId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v2

    .line 2389
    .local v2, "slotId":I
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public static hasWifiRadio(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2421
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2422
    .local v0, "conn":Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    return v1
.end method

.method private static inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 2466
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    const v5, 0x101008c

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2469
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 2470
    .local v1, "resId":I
    invoke-virtual {p0, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method private static inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 2458
    const v2, 0x7f040097

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2459
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 2461
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2462
    return-object v0
.end method

.method private static insetListViewDrawables(Landroid/widget/ListView;I)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ListView;
    .param p1, "insetSide"    # I

    .prologue
    .line 2536
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2537
    .local v1, "selector":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2541
    .local v0, "divider":Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2542
    .local v2, "stub":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2543
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2545
    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v1, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2546
    new-instance v3, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;

    invoke-direct {v3, v0, p1}, Lcom/android/settings_ex/drawable/InsetBoundsDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2547
    return-void
.end method

.method private isAppDetailMode()Z
    .locals 1

    .prologue
    .line 850
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
    .line 1024
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1027
    :goto_0
    return v1

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
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

    .line 1027
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 984
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 986
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 994
    :cond_0
    :goto_0
    return v0

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 992
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 994
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z
    .locals 1
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1018
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

.method private multiSimGetCurrentSub()I
    .locals 3

    .prologue
    .line 2632
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2634
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2640
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 2633
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2640
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setAppRestrictBackground(Z)V
    .locals 3
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v0, v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    .line 1045
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1047
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1048
    return-void

    .line 1045
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1001
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1002
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->multiSimGetCurrentSub()I

    move-result v0

    .line 1005
    .local v0, "phoneId":I
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1008
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 1009
    .local v1, "subId":[I
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v4, v1, v3

    invoke-virtual {v2, v4, p1}, Landroid/telephony/TelephonyManager;->setDataEnabledUsingSubId(IZ)V

    .line 1014
    .end local v0    # "phoneId":I
    .end local v1    # "subId":[I
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 1015
    return-void

    .restart local v0    # "phoneId":I
    :cond_0
    move v2, v3

    .line 1005
    goto :goto_0

    .line 1011
    .end local v0    # "phoneId":I
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1012
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mMobileDataEnabled:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private setPolicyLimitBytes(J)V
    .locals 3
    .param p1, "limitBytes"    # J

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    .line 973
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 974
    return-void
.end method

.method private setPolicyWarningBytes(J)V
    .locals 3
    .param p1, "warningBytes"    # J

    .prologue
    .line 966
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 967
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->updatePolicy(Z)V

    .line 968
    return-void
.end method

.method private static setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "string"    # Ljava/lang/CharSequence;

    .prologue
    .line 2563
    const v1, 0x1020010

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2564
    .local v0, "summary":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2565
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2566
    return-void
.end method

.method private static setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "resId"    # I

    .prologue
    .line 2554
    const v1, 0x1020016

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2555
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2556
    return-void
.end method

.method private updateAppDetail()V
    .locals 23

    .prologue
    .line 858
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 859
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 860
    .local v17, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v10

    .line 862
    .local v10, "inflater":Landroid/view/LayoutInflater;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    move/from16 v19, v0

    .line 879
    .local v19, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settings_ex/net/UidDetail;

    move-result-object v7

    .line 880
    .local v7, "detail":Lcom/android/settings_ex/net/UidDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/android/settings_ex/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 884
    const/16 v18, 0x0

    .line 885
    .local v18, "title":Landroid/view/View;
    iget-object v0, v7, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 886
    iget-object v0, v7, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v14, v0

    .line 887
    .local v14, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v14, :cond_2

    .line 888
    iget-object v0, v7, Lcom/android/settings_ex/net/UidDetail;->detailLabels:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v11, v20, v8

    .line 889
    .local v11, "label":Ljava/lang/CharSequence;
    iget-object v0, v7, Lcom/android/settings_ex/net/UidDetail;->detailContentDescriptions:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    aget-object v5, v20, v8

    .line 890
    .local v5, "contentDescription":Ljava/lang/CharSequence;
    const v20, 0x7f040030

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 891
    const v20, 0x7f0f0073

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 892
    .local v3, "appTitle":Landroid/widget/TextView;
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 887
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 866
    .end local v3    # "appTitle":Landroid/widget/TextView;
    .end local v5    # "contentDescription":Ljava/lang/CharSequence;
    .end local v7    # "detail":Lcom/android/settings_ex/net/UidDetail;
    .end local v8    # "i":I
    .end local v11    # "label":Ljava/lang/CharSequence;
    .end local v14    # "n":I
    .end local v18    # "title":Landroid/view/View;
    .end local v19    # "uid":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangeVisible(Z)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindDetailNetworkStats(Landroid/net/NetworkStatsHistory;)V

    .line 962
    :goto_1
    return-void

    .line 897
    .restart local v7    # "detail":Lcom/android/settings_ex/net/UidDetail;
    .restart local v18    # "title":Landroid/view/View;
    .restart local v19    # "uid":I
    :cond_1
    const v20, 0x7f040030

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 898
    const v20, 0x7f0f0073

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 899
    .restart local v3    # "appTitle":Landroid/widget/TextView;
    iget-object v0, v7, Lcom/android/settings_ex/net/UidDetail;->label:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v0, v7, Lcom/android/settings_ex/net/UidDetail;->contentDescription:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 901
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 905
    .end local v3    # "appTitle":Landroid/widget/TextView;
    :cond_2
    if-eqz v18, :cond_4

    .line 906
    const v20, 0x7f0f0074

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    .line 912
    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 913
    .local v16, "packageNames":[Ljava/lang/String;
    if-eqz v16, :cond_6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_6

    .line 914
    new-instance v20, Landroid/content/Intent;

    const-string v21, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const-string v21, "android.intent.category.DEFAULT"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    const/4 v13, 0x0

    .line 919
    .local v13, "matchFound":Z
    move-object/from16 v4, v16

    .local v4, "arr$":[Ljava/lang/String;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_3
    if-ge v9, v12, :cond_3

    aget-object v15, v4, v9

    .line 920
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 922
    const/4 v13, 0x1

    .line 927
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/settings_ex/DataUsageSummary$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$5;-><init>(Lcom/android/settings_ex/DataUsageSummary;I)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    .line 948
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    .line 950
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v20

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v20

    if-nez v20, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-static {v6}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f090959

    invoke-static/range {v20 .. v21}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f09095a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceSummary(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getAppRestrictBackground()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .line 908
    .end local v16    # "packageNames":[Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 919
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "matchFound":Z
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "packageNames":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 943
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "matchFound":Z
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_6
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/DataUsageSummary;->mAppSettingsIntent:Landroid/content/Intent;

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 960
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private updateBody()V
    .locals 9

    .prologue
    const v8, 0x7f090953

    const v7, 0x7f090947

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 769
    iput-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 770
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAdded()Z

    move-result v6

    if-nez v6, :cond_0

    .line 847
    :goto_0
    return-void

    .line 772
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 773
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "currentTab":Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    .line 776
    .local v3, "isOwner":Z
    :goto_1
    if-nez v1, :cond_2

    .line 777
    const-string v4, "DataUsage"

    const-string v5, "no tab selected; hiding body"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .end local v3    # "isOwner":Z
    :cond_1
    move v3, v5

    .line 774
    goto :goto_1

    .line 781
    .restart local v3    # "isOwner":Z
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 784
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    .line 788
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 789
    iput-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 793
    const-string v4, "mobile"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 794
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v4, v8}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 795
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v4, v7}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 796
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 840
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentApp:Lcom/android/settings_ex/DataUsageSummary$AppItem;

    invoke-static {v7, v8}, Lcom/android/settings_ex/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settings_ex/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v4, v6, v7, v8}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 844
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 846
    iput-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    goto :goto_0

    .line 798
    :cond_4
    const-string v4, "SIM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 799
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 801
    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v4}, Lcom/android/settings_ex/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 802
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-static {v4, v8}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 804
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-static {v4, v7}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 806
    invoke-static {v2}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    .line 800
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 809
    .end local v2    # "i":I
    :cond_6
    const-string v4, "3g"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 810
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v6, 0x7f090954

    invoke-static {v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 811
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v6, 0x7f090949

    invoke-static {v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 813
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 815
    :cond_7
    const-string v4, "4g"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 816
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const v6, 0x7f090955

    invoke-static {v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 817
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const v6, 0x7f090948

    invoke-static {v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->setPreferenceTitle(Landroid/view/View;I)V

    .line 819
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 821
    :cond_8
    const-string v4, "wifi"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 823
    iput-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 824
    iput-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 825
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 827
    :cond_9
    const-string v4, "ethernet"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 829
    iput-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 830
    iput-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 831
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 834
    :cond_a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown tab: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private updateCycleList(Landroid/net/NetworkPolicy;)V
    .locals 25
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .prologue
    .line 1102
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .line 1103
    .local v17, "previousItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->clear()V

    .line 1105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1107
    .local v5, "context":Landroid/content/Context;
    const-wide v20, 0x7fffffffffffffffL

    .line 1108
    .local v20, "historyStart":J
    const-wide/high16 v18, -0x8000000000000000L

    .line 1109
    .local v18, "historyEnd":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v4, :cond_0

    .line 1110
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v4, v4, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v20

    .line 1111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v4, v4, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v4}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v18

    .line 1114
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1115
    .local v22, "now":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v20, v10

    if-nez v4, :cond_1

    move-wide/from16 v20, v22

    .line 1116
    :cond_1
    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v4, v18, v10

    if-nez v4, :cond_2

    const-wide/16 v10, 0x1

    add-long v18, v22, v10

    .line 1118
    :cond_2
    const/16 v16, 0x0

    .line 1119
    .local v16, "hasCycles":Z
    if-eqz p1, :cond_4

    .line 1121
    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v8

    .line 1124
    .local v8, "cycleEnd":J
    :goto_0
    cmp-long v4, v8, v20

    if-lez v4, :cond_3

    .line 1125
    move-object/from16 v0, p1

    invoke-static {v8, v9, v0}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v6

    .line 1126
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

    .line 1128
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1129
    move-wide v8, v6

    .line 1130
    const/16 v16, 0x1

    .line 1131
    goto :goto_0

    .line 1134
    .end local v6    # "cycleStart":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-direct/range {p0 .. p1}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1137
    .end local v8    # "cycleEnd":J
    :cond_4
    if-nez v16, :cond_6

    .line 1139
    move-wide/from16 v8, v18

    .line 1140
    .restart local v8    # "cycleEnd":J
    :goto_1
    cmp-long v4, v8, v20

    if-lez v4, :cond_5

    .line 1141
    const-wide v10, 0x90321000L

    sub-long v6, v8, v10

    .line 1142
    .restart local v6    # "cycleStart":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    invoke-direct/range {v4 .. v9}, Lcom/android/settings_ex/DataUsageSummary$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v10, v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->add(Ljava/lang/Object;)V

    .line 1143
    move-wide v8, v6

    .line 1144
    goto :goto_1

    .line 1146
    .end local v6    # "cycleStart":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->setChangePossible(Z)V

    .line 1150
    .end local v8    # "cycleEnd":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_8

    .line 1151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->findNearestPosition(Lcom/android/settings_ex/DataUsageSummary$CycleItem;)I

    move-result v13

    .line 1152
    .local v13, "position":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, v13}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v13}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/settings_ex/DataUsageSummary$CycleItem;

    .line 1157
    .local v24, "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1158
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    invoke-interface/range {v10 .. v15}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1166
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :goto_2
    return-void

    .line 1161
    .restart local v13    # "position":I
    .restart local v24    # "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_2

    .line 1164
    .end local v13    # "position":I
    .end local v24    # "selectedItem":Lcom/android/settings_ex/DataUsageSummary$CycleItem;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->updateDetailData()V

    goto :goto_2
.end method

.method private updateDetailData()V
    .locals 26

    .prologue
    .line 1278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    .line 1279
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings_ex/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    .line 1280
    .local v6, "end":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1282
    .local v8, "now":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1284
    .local v2, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 1285
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

    .line 1287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1288
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v20, v12, v14

    .line 1289
    .local v20, "defaultBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v3, v3, Lcom/android/settings_ex/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1290
    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v22, v12, v14

    .line 1291
    .local v22, "foregroundBytes":J
    add-long v24, v20, v22

    .line 1293
    .local v24, "totalBytes":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 1294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppTotal:Landroid/widget/TextView;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v11, v3, Lcom/android/settings_ex/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1318
    .end local v20    # "defaultBytes":J
    .end local v22    # "foregroundBytes":J
    .end local v24    # "totalBytes":J
    :goto_0
    if-eqz v10, :cond_4

    iget-wide v12, v10, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v10, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v24, v12, v14

    .line 1319
    .restart local v24    # "totalBytes":J
    :goto_1
    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 1320
    .local v19, "totalPhrase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    const-string v3, "mobile"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    .line 1324
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1334
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/DataUsageSummary;->ensureLayoutTransitions()V

    .line 1335
    return-void

    .line 1307
    .end local v19    # "totalPhrase":Ljava/lang/String;
    .end local v24    # "totalBytes":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    if-eqz v3, :cond_3

    .line 1308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mChartData:Lcom/android/settings_ex/net/ChartData;

    iget-object v11, v3, Lcom/android/settings_ex/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/16 v18, 0x0

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    invoke-virtual/range {v11 .. v18}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v10

    .line 1311
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1314
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

    .line 1318
    :cond_4
    const-wide/16 v24, 0x0

    goto :goto_1

    .line 1327
    .restart local v19    # "totalPhrase":Ljava/lang/String;
    .restart local v24    # "totalBytes":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1330
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
    .line 558
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f090933

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 564
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-eqz v0, :cond_1

    .line 565
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f090936

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 570
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-eqz v0, :cond_2

    .line 571
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f090938

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 575
    :goto_2
    return-void

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    const v1, 0x7f090932

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    const v1, 0x7f090935

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    const v1, 0x7f090937

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

    .line 1055
    iget-boolean v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledSupported:Z

    .line 1056
    .local v0, "dataEnabledVisible":Z
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitSupported:Z

    .line 1058
    .local v1, "disableAtLimitVisible":Z
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1059
    const/4 v0, 0x0

    .line 1060
    const/4 v1, 0x0

    .line 1064
    :cond_0
    const-string v6, "mobile"

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mCurrentTab:Ljava/lang/String;

    const-string v7, "SIM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1065
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 1066
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isMobileDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1067
    iput-boolean v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mBinding:Z

    .line 1070
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v7}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 1071
    .local v2, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1072
    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    if-eqz v2, :cond_5

    iget-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_5

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1073
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1074
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 1085
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    if-eqz v1, :cond_7

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    if-eqz p1, :cond_4

    .line 1091
    invoke-direct {p0, v2}, Lcom/android/settings_ex/DataUsageSummary;->updateCycleList(Landroid/net/NetworkPolicy;)V

    .line 1093
    :cond_4
    return-void

    :cond_5
    move v3, v4

    .line 1072
    goto :goto_0

    .line 1079
    :cond_6
    const/4 v1, 0x0

    .line 1080
    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_1

    :cond_7
    move v4, v5

    .line 1087
    goto :goto_2
.end method

.method private updateTabs()V
    .locals 12

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 680
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 681
    .local v0, "context":Landroid/content/Context;
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v9}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 683
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobile4gRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 684
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "3g"

    const v11, 0x7f090950

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 685
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "4g"

    const v11, 0x7f09094f

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 697
    :cond_0
    :goto_0
    iget-boolean v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-eqz v9, :cond_1

    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 698
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "wifi"

    const v11, 0x7f09094b

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 700
    :cond_1
    iget-boolean v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 701
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "ethernet"

    const v11, 0x7f09094c

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 704
    :cond_2
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v9}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v9

    if-nez v9, :cond_6

    move v4, v7

    .line 705
    .local v4, "noTabs":Z
    :goto_1
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v9}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v9

    if-le v9, v7, :cond_7

    move v3, v7

    .line 706
    .local v3, "multipleTabs":Z
    :goto_2
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v3, :cond_8

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 707
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    if-eqz v7, :cond_a

    .line 708
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v8}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 710
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    .line 714
    :goto_4
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 725
    :cond_3
    :goto_5
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v6

    .line 726
    .local v6, "subid":I
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    .line 727
    .local v1, "dataSlotId":I
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 730
    return-void

    .line 686
    .end local v1    # "dataSlotId":I
    .end local v3    # "multipleTabs":Z
    .end local v4    # "noTabs":Z
    .end local v6    # "subid":I
    :cond_4
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 687
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    .line 688
    .local v5, "phoneCount":I
    if-le v5, v7, :cond_5

    .line 689
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v5, :cond_0

    .line 690
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    add-int/lit8 v10, v2, 0x1

    invoke-direct {p0, v10}, Lcom/android/settings_ex/DataUsageSummary;->getSubTag(I)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v11, v2, 0x1

    invoke-direct {p0, v11}, Lcom/android/settings_ex/DataUsageSummary;->getSubTitle(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 689
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 693
    .end local v2    # "i":I
    :cond_5
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    const-string v10, "mobile"

    const v11, 0x7f09094d

    invoke-direct {p0, v10, v11}, Lcom/android/settings_ex/DataUsageSummary;->buildTabSpec(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    .end local v5    # "phoneCount":I
    :cond_6
    move v4, v8

    .line 704
    goto :goto_1

    .restart local v4    # "noTabs":Z
    :cond_7
    move v3, v8

    .line 705
    goto :goto_2

    .line 706
    .restart local v3    # "multipleTabs":Z
    :cond_8
    const/16 v8, 0x8

    goto :goto_3

    .line 712
    :cond_9
    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 715
    :cond_a
    if-eqz v4, :cond_3

    .line 717
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateBody()V

    goto :goto_5
.end method


# virtual methods
.method public hasEthernet(Landroid/content/Context;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2433
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v6

    .line 2434
    .local v6, "conn":Landroid/net/ConnectivityManager;
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    .line 2437
    .local v10, "hasEthernet":Z
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2439
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

    .line 2450
    .local v8, "ethernetBytes":J
    :goto_0
    if-eqz v10, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2442
    .end local v8    # "ethernetBytes":J
    :catch_0
    move-exception v7

    .line 2443
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2446
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v8, 0x0

    .restart local v8    # "ethernetBytes":J
    goto :goto_0

    .line 2450
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 285
    invoke-super {p0, p1}, Lcom/android/settings_ex/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 292
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 295
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 297
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    .line 299
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 300
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "data_usage"

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    .line 304
    new-instance v2, Lcom/android/settings_ex/net/NetworkPolicyEditor;

    iget-object v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/net/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    .line 305
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyEditor:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-virtual {v2}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->read()V

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    const-string v2, "DataUsage"

    const-string v3, "No bandwidth control; leaving"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 323
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_wifi"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 324
    iget-object v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "show_ethernet"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 327
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    iput-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 329
    iput-boolean v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 337
    :cond_1
    return-void

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DataUsage"

    const-string v3, "No bandwidth control; leaving"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 319
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 320
    .restart local v1    # "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 504
    const v0, 0x7f110001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 505
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x7f0f0000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 343
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 344
    .local v0, "context":Landroid/content/Context;
    const v4, 0x7f04003a

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 346
    .local v3, "view":Landroid/view/View;
    new-instance v4, Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-direct {v4, v0}, Lcom/android/settings_ex/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 348
    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    .line 349
    const v4, 0x7f0f0088

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabsContainer:Landroid/view/ViewGroup;

    .line 350
    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabWidget;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabWidget:Landroid/widget/TabWidget;

    .line 351
    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    .line 355
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v4

    const/high16 v7, 0x2000000

    if-ne v4, v7, :cond_1

    move v1, v5

    .line 357
    .local v1, "shouldInset":Z
    :goto_0
    iput v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    .line 360
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3, v4, v6}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 362
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 363
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v4, v7}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 365
    const v4, 0x7f040038

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    .line 366
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 368
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/View;

    invoke-direct {v7, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7, v10, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 369
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7, v10, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 370
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 372
    iget v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    if-lez v4, :cond_0

    .line 374
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-static {v4, v7}, Lcom/android/settings_ex/DataUsageSummary;->insetListViewDrawables(Landroid/widget/ListView;I)V

    .line 375
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    iget v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    iget v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-virtual {v4, v7, v6, v8, v6}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 380
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0f0084

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitchesContainer:Landroid/view/ViewGroup;

    .line 382
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0f0085

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    .line 384
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    .line 385
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 386
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 387
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabled:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 388
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const-string v7, "data_usage_enable_mobile"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 390
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 391
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 392
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 395
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 397
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    .line 398
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 399
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 400
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimit:Landroid/widget/Switch;

    invoke-static {p1, v4, v7}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 401
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    const-string v7, "data_usage_disable_mobile_limit"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 403
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 404
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 405
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    const v4, 0x7f040036

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    .line 409
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    const-string v7, "data_usage_cycle"

    invoke-virtual {v4, v9, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 410
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f0f007d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    .line 411
    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-direct {v4, v0}, Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    .line 412
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleAdapter:Lcom/android/settings_ex/DataUsageSummary$CycleAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 413
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 414
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    const v7, 0x7f0f007e

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleSummary:Landroid/widget/TextView;

    .line 415
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mNetworkSwitches:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mCycleView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0f0076

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/widget/ChartDataUsageView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    .line 419
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    iget-object v7, p0, Lcom/android/settings_ex/DataUsageSummary;->mChartListener:Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v4, v7}, Lcom/android/settings_ex/widget/ChartDataUsageView;->setListener(Lcom/android/settings_ex/widget/ChartDataUsageView$DataUsageChartListener;)V

    .line 420
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mChart:Lcom/android/settings_ex/widget/ChartDataUsageView;

    invoke-virtual {v4, v10}, Lcom/android/settings_ex/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    .line 424
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v7, 0x7f0f007f

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    .line 425
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f000b

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppIcon:Landroid/widget/ImageView;

    .line 426
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f0080

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppTitles:Landroid/view/ViewGroup;

    .line 427
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f0081

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppForeground:Landroid/widget/TextView;

    .line 428
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f0082

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppBackground:Landroid/widget/TextView;

    .line 429
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f0083

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    .line 431
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppDetail:Landroid/view/View;

    const v7, 0x7f0f000d

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSettings:Landroid/widget/Button;

    .line 433
    new-instance v4, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    .line 434
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setClickable(Z)V

    .line 435
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 436
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrict:Landroid/widget/Switch;

    invoke-static {p1, v4, v6}, Lcom/android/settings_ex/DataUsageSummary;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    .line 437
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setClickable(Z)V

    .line 438
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 439
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppSwitches:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAppRestrictView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 443
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0f0086

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisclaimer:Landroid/view/View;

    .line 444
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mEmpty:Landroid/widget/TextView;

    .line 445
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mHeader:Landroid/view/ViewGroup;

    const v5, 0x7f0f0087

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mStupidPadding:Landroid/view/View;

    .line 447
    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 448
    .local v2, "um":Landroid/os/UserManager;
    new-instance v4, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    iget v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mInsetSide:I

    invoke-direct {v4, v2, v5, v6}, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;-><init>(Landroid/os/UserManager;Lcom/android/settings_ex/net/UidDetailProvider;I)V

    iput-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    .line 449
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 450
    iget-object v4, p0, Lcom/android/settings_ex/DataUsageSummary;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary;->mAdapter:Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 452
    return-object v3

    .end local v1    # "shouldInset":Z
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_1
    move v1, v6

    .line 355
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 636
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDataEnabledView:Landroid/view/View;

    .line 637
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mDisableAtLimitView:Landroid/view/View;

    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settings_ex/net/UidDetailProvider;->clearCache()V

    .line 640
    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mUidDetailProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 642
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 644
    invoke-super {p0}, Lcom/android/settings_ex/HighlightingFragment;->onDestroy()V

    .line 645
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 579
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v9, v6

    .line 631
    :goto_0
    :pswitch_0
    return v9

    .line 581
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_0

    move v8, v9

    .line 582
    .local v8, "restrictBackground":Z
    :goto_1
    if-eqz v8, :cond_1

    .line 583
    invoke-static {p0}, Lcom/android/settings_ex/DataUsageSummary$ConfirmRestrictFragment;->show(Lcom/android/settings_ex/DataUsageSummary;)V

    goto :goto_0

    .end local v8    # "restrictBackground":Z
    :cond_0
    move v8, v6

    .line 581
    goto :goto_1

    .line 586
    .restart local v8    # "restrictBackground":Z
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 591
    .end local v8    # "restrictBackground":Z
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    if-nez v1, :cond_2

    move v6, v9

    :cond_2
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    .line 592
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_wifi"

    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowWifi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 593
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateMenuTitles()V

    .line 594
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 598
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    if-nez v1, :cond_3

    move v6, v9

    :cond_3
    iput-boolean v6, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    .line 599
    iget-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show_ethernet"

    iget-boolean v3, p0, Lcom/android/settings_ex/DataUsageSummary;->mShowEthernet:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 600
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateMenuTitles()V

    .line 601
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    goto :goto_0

    .line 609
    :pswitch_4
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 610
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v9, :cond_4

    .line 611
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SelectSubscription"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    const-string v1, "PACKAGE"

    const-string v2, "com.android.phone"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-string v1, "TARGET_CLASS"

    const-string v2, "com.android.phone.MSimMobileNetworkSubSettings"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    :goto_2
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 618
    :cond_4
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    .line 625
    .end local v7    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 626
    .local v0, "sa":Lcom/android/settings_ex/SettingsActivity;
    const-class v1, Lcom/android/settings_ex/net/DataUsageMeteredSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090974

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 579
    :pswitch_data_0
    .packed-switch 0x7f0f02ae
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

    .line 509
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 510
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->isAppDetailMode()Z

    move-result v0

    .line 511
    .local v0, "appDetailMode":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-nez v8, :cond_1

    move v4, v6

    .line 513
    .local v4, "isOwner":Z
    :goto_0
    const v8, 0x7f0f02af

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    .line 514
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 515
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    move v8, v6

    :goto_1
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 520
    :goto_2
    const v8, 0x7f0f02b0

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    .line 521
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/DataUsageSummary;->hasEthernet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 522
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    if-nez v0, :cond_4

    move v8, v6

    :goto_3
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 527
    :goto_4
    const v8, 0x7f0f02ae

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    .line 528
    iget-object v9, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuRestrictBackground:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    move v8, v6

    :goto_5
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 531
    const v8, 0x7f0f02b1

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 532
    .local v5, "metered":Landroid/view/MenuItem;
    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 533
    :cond_0
    if-nez v0, :cond_7

    move v8, v6

    :goto_6
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 539
    :goto_7
    const v8, 0x7f0f02b2

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    .line 540
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuSimCards:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 542
    const v8, 0x7f0f02b3

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    .line 543
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuCellularNetworks:Landroid/view/MenuItem;

    invoke-static {v1}, Lcom/android/settings_ex/DataUsageSummary;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v0, :cond_9

    if-eqz v4, :cond_9

    :goto_8
    invoke-interface {v8, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 546
    const v6, 0x7f0f02b4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 548
    .local v2, "help":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f090a1b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "helpUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 549
    invoke-static {v1, v2, v3}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 554
    :goto_9
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateMenuTitles()V

    .line 555
    return-void

    .end local v2    # "help":Landroid/view/MenuItem;
    .end local v3    # "helpUrl":Ljava/lang/String;
    .end local v4    # "isOwner":Z
    .end local v5    # "metered":Landroid/view/MenuItem;
    :cond_1
    move v4, v7

    .line 511
    goto/16 :goto_0

    .restart local v4    # "isOwner":Z
    :cond_2
    move v8, v7

    .line 515
    goto/16 :goto_1

    .line 517
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowWifi:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_4
    move v8, v7

    .line 522
    goto/16 :goto_3

    .line 524
    :cond_5
    iget-object v8, p0, Lcom/android/settings_ex/DataUsageSummary;->mMenuShowEthernet:Landroid/view/MenuItem;

    invoke-interface {v8, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_6
    move v8, v7

    .line 528
    goto :goto_5

    .restart local v5    # "metered":Landroid/view/MenuItem;
    :cond_7
    move v8, v7

    .line 533
    goto :goto_6

    .line 535
    :cond_8
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_9
    move v6, v7

    .line 543
    goto :goto_8

    .line 551
    .restart local v2    # "help":Landroid/view/MenuItem;
    .restart local v3    # "helpUrl":Ljava/lang/String;
    :cond_a
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 470
    invoke-super {p0}, Lcom/android/settings_ex/HighlightingFragment;->onResume()V

    .line 472
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/DataUsageSummary$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/DataUsageSummary$1;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 480
    new-instance v0, Lcom/android/settings_ex/DataUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/DataUsageSummary$2;-><init>(Lcom/android/settings_ex/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/DataUsageSummary$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 500
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/android/settings_ex/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 460
    invoke-virtual {p0}, Lcom/android/settings_ex/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 461
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/android/settings_ex/DataUsageSummary;->computeTabFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/DataUsageSummary;->mIntentTab:Ljava/lang/String;

    .line 465
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateTabs()V

    .line 466
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1033
    invoke-direct {p0}, Lcom/android/settings_ex/DataUsageSummary;->updateMenuTitles()V

    .line 1034
    return-void
.end method
