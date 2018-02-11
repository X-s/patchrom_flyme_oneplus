.class public Lcom/android/settings_ex/applications/ManageApplications;
.super Lcom/android/settings_ex/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ManageApplications$1;,
        Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;,
        Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;,
        Lcom/android/settings_ex/applications/ManageApplications$SummaryProvider;
    }
.end annotation


# static fields
.field private static final ADVANCED_SETTINGS:I = 0x2

.field public static final APP_CHG:Ljava/lang/String; = "chg"

.field static final DEBUG:Z

.field public static final EXTRA_CLASSNAME:Ljava/lang/String; = "classname"

.field private static final EXTRA_FILTER_MODE:Ljava/lang/String; = "filterMode"

.field private static final EXTRA_HAS_BRIDGE:Ljava/lang/String; = "hasBridge"

.field private static final EXTRA_HAS_ENTRIES:Ljava/lang/String; = "hasEntries"

.field private static final EXTRA_SHOW_SYSTEM:Ljava/lang/String; = "showSystem"

.field private static final EXTRA_SORT_ORDER:Ljava/lang/String; = "sortOrder"

.field public static final EXTRA_VOLUME_NAME:Ljava/lang/String; = "volumeName"

.field public static final EXTRA_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final FILTERS:[Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APPS_ALL:I = 0x2

.field public static final FILTER_APPS_BACKGROUND_OPTIMIZE_ALL:I = 0x10

.field public static final FILTER_APPS_BACKGROUND_OPTIMIZE_NOT:I = 0x11

.field public static final FILTER_APPS_BLOCKED:I = 0x5

.field public static final FILTER_APPS_DISABLED:I = 0x4

.field public static final FILTER_APPS_DISPLAY_SIZE_ADAPTION_ALL:I = 0x12

.field public static final FILTER_APPS_DISPLAY_SIZE_ADAPTION_FULL_SCREEN:I = 0x13

.field public static final FILTER_APPS_DISPLAY_SIZE_ADAPTION_ORIGINAL_SIZE:I = 0x14

.field public static final FILTER_APPS_ENABLED:I = 0x3

.field public static final FILTER_APPS_HIDE_NOTIFICATIONS:I = 0x8

.field public static final FILTER_APPS_PERSONAL:I = 0xa

.field public static final FILTER_APPS_POWER_WHITELIST:I = 0x0

.field public static final FILTER_APPS_POWER_WHITELIST_ALL:I = 0x1

.field public static final FILTER_APPS_PRIORITY:I = 0x9

.field public static final FILTER_APPS_SENSITIVE:I = 0x7

.field public static final FILTER_APPS_SILENT:I = 0x6

.field public static final FILTER_APPS_USAGE_ACCESS:I = 0xd

.field public static final FILTER_APPS_WITH_DOMAIN_URLS:I = 0xc

.field public static final FILTER_APPS_WITH_OVERLAY:I = 0xe

.field public static final FILTER_APPS_WORK:I = 0xb

.field public static final FILTER_APPS_WRITE_SETTINGS:I = 0xf

.field public static final FILTER_LABELS:[I

.field private static final INSTALLED_APP_DETAILS:I = 0x1

.field public static final LIST_TYPE_BACKGROUND_OPTIMIZE:I = 0x8

.field public static final LIST_TYPE_DISPLAY_SIZE_ADAPION:I = 0x9

.field public static final LIST_TYPE_DOMAINS_URLS:I = 0x2

.field public static final LIST_TYPE_HIGH_POWER:I = 0x5

.field public static final LIST_TYPE_MAIN:I = 0x0

.field public static final LIST_TYPE_NOTIFICATION:I = 0x1

.field public static final LIST_TYPE_OVERLAY:I = 0x6

.field public static final LIST_TYPE_STORAGE:I = 0x3

.field public static final LIST_TYPE_USAGE_ACCESS:I = 0x4

.field public static final LIST_TYPE_WRITE_SETTINGS:I = 0x7

.field public static final SIZE_EXTERNAL:I = 0x2

.field public static final SIZE_INTERNAL:I = 0x1

.field public static final SIZE_TOTAL:I = 0x0

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

.field static final TAG:Ljava/lang/String; = "ManageApplications"


# instance fields
.field private curPosition:I

.field private emptyView:Landroid/view/View;

.field public mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field public mFilter:I

.field private mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFinishAfterDialog:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNotifBackend:Lcom/android/settings_ex/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mShowSystem:Z

.field private mSortOrder:I

.field private mSpinnerHeader:Landroid/view/View;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mVolumeName:Ljava/lang/String;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNotifBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings_ex/applications/ManageApplications;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v1, 0x15

    const/4 v4, 0x3

    .line 117
    const-string/jumbo v0, "ManageApplications"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    .line 171
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/applications/ManageApplications;->FILTER_LABELS:[I

    .line 203
    new-array v0, v1, [Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 204
    new-instance v1, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings_ex/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 205
    sget-object v3, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 204
    invoke-direct {v1, v2, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 206
    new-instance v1, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 207
    sget-object v3, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 206
    invoke-direct {v1, v2, v3}, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 208
    sget-object v1, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 209
    sget-object v1, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v4

    .line 210
    sget-object v1, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 211
    sget-object v1, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 212
    sget-object v1, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SILENCED:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 213
    sget-object v1, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_SENSITIVE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 214
    sget-object v1, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_ALL:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 215
    sget-object v1, Lcom/android/settings_ex/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 216
    sget-object v1, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 217
    sget-object v1, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 218
    sget-object v1, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 219
    sget-object v1, Lcom/android/settings_ex/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 220
    sget-object v1, Lcom/android/settings_ex/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 221
    sget-object v1, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 223
    sget-object v1, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_All:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 224
    sget-object v1, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;->FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 227
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_All:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 228
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_FULL_SCREEN:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 229
    sget-object v1, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionBridge;->FILTER_APP_ORIGINAL_SIZE:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 203
    sput-object v0, Lcom/android/settings_ex/applications/ManageApplications;->FILTERS:[Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1591
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$1;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/ManageApplications$1;-><init>()V

    .line 1590
    sput-object v0, Lcom/android/settings_ex/applications/ManageApplications;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings_ex/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 113
    return-void

    .line 171
    :array_0
    .array-data 4
        0x7f0e0f63
        0x7f0e0f27
        0x7f0e0f27
        0x7f0e0f28
        0x7f0e0a27
        0x7f0e0f2b
        0x7f0e03b8
        0x7f0e0f2e
        0x7f0e0f2f
        0x7f0e0f2d
        0x7f0e0f29
        0x7f0e0f2a
        0x7f0e0f2c
        0x7f0e0f27
        0x7f0e0fb6
        0x7f0e0fbc
        0x7f0e0f27
        0x7f0e03c5
        0x7f0e0f27
        0x7f0e040e
        0x7f0e040f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/settings_ex/InstrumentedFragment;-><init>()V

    .line 234
    const v0, 0x7f110415

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 290
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 799
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->curPosition:I

    .line 113
    return-void
.end method

.method private createHeader()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x5

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 422
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f110129

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 423
    .local v1, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 424
    const v3, 0x7f04002d

    .line 423
    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    .line 425
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v3, 0x7f1100ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    .line 427
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v3, 0x7f1100af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 429
    new-instance v2, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/settings_ex/applications/ManageApplications;)V

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    .line 430
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 431
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 432
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 434
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 435
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-nez v2, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 437
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 438
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 441
    :cond_0
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v2, v5, :cond_1

    .line 442
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v7}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 443
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 444
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 445
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v6}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 446
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v8}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 448
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v2, v7, :cond_2

    .line 449
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 451
    :cond_2
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 452
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    new-instance v3, Lcom/android/settings_exlib/applications/ApplicationsState$VolumeFilter;

    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/settings_exlib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->setOverrideFilter(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;)V

    .line 455
    :cond_3
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v2, v6, :cond_4

    .line 456
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 457
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 461
    :cond_4
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v2, v8, :cond_5

    .line 462
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 463
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 464
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 420
    :cond_5
    return-void
.end method

.method private getDefaultFilter()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 499
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 481
    :pswitch_1
    const/16 v0, 0xc

    return v0

    .line 483
    :pswitch_2
    const/16 v0, 0xd

    return v0

    .line 485
    :pswitch_3
    const/4 v0, 0x0

    return v0

    .line 487
    :pswitch_4
    const/16 v0, 0xe

    return v0

    .line 489
    :pswitch_5
    const/16 v0, 0xf

    return v0

    .line 492
    :pswitch_6
    const/16 v0, 0x10

    return v0

    .line 496
    :pswitch_7
    const/16 v0, 0x12

    return v0

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private isFastScrollEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 504
    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 510
    :pswitch_0
    return v0

    .line 508
    :pswitch_1
    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    const v2, 0x7f110415

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 6
    .param p2, "titleRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentUid:I

    .line 677
    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    .line 676
    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    .line 675
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 627
    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    packed-switch v1, :pswitch_data_0

    .line 670
    const-class v1, Lcom/android/settings_ex/applications/InstalledAppDetails;

    const v2, 0x7f0e09fb

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 629
    :pswitch_0
    const-class v1, Lcom/android/settings_ex/notification/AppNotificationSettings;

    .line 630
    const v2, 0x7f0e0e75

    .line 629
    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 633
    :pswitch_1
    const-class v1, Lcom/android/settings_ex/applications/AppLaunchSettings;

    const v2, 0x7f0e09fd

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 636
    :pswitch_2
    const-class v1, Lcom/android/settings_ex/applications/UsageAccessDetails;

    const v2, 0x7f0e0f53

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 639
    :pswitch_3
    const-class v1, Lcom/android/settings_ex/applications/AppStorageSettings;

    const v2, 0x7f0e0878

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 642
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 643
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFinishAfterDialog:Z

    .line 642
    invoke-static {p0, v1, v3, v2}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 646
    :pswitch_5
    const-class v1, Lcom/android/settings_ex/applications/DrawOverlayDetails;

    const v2, 0x7f0e0fb4

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 649
    :pswitch_6
    const-class v1, Lcom/android/settings_ex/applications/WriteSettingsDetails;

    const v2, 0x7f0e0fbe

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    .line 653
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 654
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 655
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFinishAfterDialog:Z

    invoke-static {p0, v1, v3, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 661
    .end local v0    # "activity":Landroid/app/Activity;
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFinishAfterDialog:Z

    invoke-static {p0, v1, v3, v2}, Lcom/oneplus/settings/displaysizeadaption/DisplaySizeAdaptionDetail;->show(Landroid/app/Fragment;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 3

    .prologue
    const/16 v2, 0xdd

    const/16 v1, 0x41

    .line 516
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 542
    const/4 v0, 0x0

    return v0

    .line 518
    :pswitch_0
    return v1

    .line 520
    :pswitch_1
    const/16 v0, 0x85

    return v0

    .line 522
    :pswitch_2
    const/16 v0, 0x8f

    return v0

    .line 524
    :pswitch_3
    const/16 v0, 0xb6

    return v0

    .line 526
    :pswitch_4
    const/16 v0, 0x5f

    return v0

    .line 528
    :pswitch_5
    const/16 v0, 0xb8

    return v0

    .line 530
    :pswitch_6
    return v2

    .line 532
    :pswitch_7
    return v2

    .line 535
    :pswitch_8
    return v1

    .line 539
    :pswitch_9
    return v1

    .line 516
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 605
    if-ne p1, v1, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 606
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_1

    .line 607
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings_ex/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 609
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 615
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFinishAfterDialog:Z

    if-eqz v0, :cond_4

    .line 616
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 610
    :cond_3
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    .line 612
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 618
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings_ex/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_0

    .line 621
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_exlib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 298
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 299
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_exlib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings_exlib/applications/ApplicationsState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 303
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 304
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, "className":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 306
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 308
    :cond_1
    const-class v3, Lcom/android/settings_ex/Settings$AllApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    iput-boolean v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    .line 348
    :goto_0
    if-eqz p1, :cond_d

    .line 349
    const-string/jumbo v3, "sortOrder"

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 350
    const-string/jumbo v3, "showSystem"

    iget-boolean v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    .line 351
    const-string/jumbo v3, "filterMode"

    iget v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    .line 356
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e0a45

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 358
    new-instance v3, Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings_ex/applications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

    .line 297
    return-void

    .line 310
    :cond_2
    const-class v3, Lcom/android/settings_ex/Settings$NotificationAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 311
    iput v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    .line 312
    new-instance v3, Lcom/android/settings_ex/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/settings_ex/notification/NotificationBackend;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mNotifBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    goto :goto_0

    .line 313
    :cond_3
    const-class v3, Lcom/android/settings_ex/Settings$DomainsURLsAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 314
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    goto :goto_0

    .line 315
    :cond_4
    const-class v3, Lcom/android/settings_ex/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 316
    if-eqz v0, :cond_5

    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 317
    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 318
    const-string/jumbo v3, "volumeName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    .line 319
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    .line 324
    :goto_2
    const v3, 0x7f110416

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_0

    .line 322
    :cond_5
    iput v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    goto :goto_2

    .line 325
    :cond_6
    const-class v3, Lcom/android/settings_ex/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 326
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    .line 327
    :cond_7
    const-class v3, Lcom/android/settings_ex/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 328
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    .line 330
    iput-boolean v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_0

    .line 331
    :cond_8
    const-class v3, Lcom/android/settings_ex/Settings$OverlaySettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 332
    const/4 v3, 0x6

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    .line 333
    :cond_9
    const-class v3, Lcom/android/settings_ex/Settings$WriteSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 334
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    .line 336
    :cond_a
    const-class v3, Lcom/android/settings_ex/Settings$BgOptimizeAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 337
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    .line 340
    :cond_b
    const-class v3, Lcom/android/settings_ex/Settings$DisplaySizeAdaptionAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 341
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    .line 345
    :cond_c
    iput v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    .line 353
    :cond_d
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 683
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 685
    :cond_0
    return-void

    .line 687
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_2

    .line 688
    const v0, 0x7f0e0d9d

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 687
    invoke-static {v1, p1, v0, v2}, Lcom/android/settings_exlib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 689
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 690
    const v0, 0x7f140002

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 691
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 681
    return-void

    .line 688
    :cond_2
    const v0, 0x7f0e0d9c

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 366
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 368
    const v4, 0x7f0400aa

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 369
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f11018a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 370
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f110193

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 372
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 376
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->emptyView:Landroid/view/View;

    .line 378
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 379
    .local v2, "lv":Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->emptyView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 380
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->emptyView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 382
    :cond_0
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 383
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 384
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 385
    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 386
    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 388
    new-instance v0, Landroid/widget/TextView;

    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, "header":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0140

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 390
    .local v1, "height":I
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 391
    .local v3, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 393
    new-instance v4, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplicationsState:Lcom/android/settings_exlib/applications/ApplicationsState;

    iget v6, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    invoke-direct {v4, p0, v5, p0, v6}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/ManageApplications;I)V

    iput-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .line 394
    if-eqz p3, :cond_1

    .line 395
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .line 396
    const-string/jumbo v5, "hasEntries"

    invoke-virtual {p3, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 395
    invoke-static {v4, v5}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->-set2(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 397
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .line 398
    const-string/jumbo v5, "hasBridge"

    invoke-virtual {p3, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 397
    invoke-static {v4, v5}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->-set1(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 400
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 401
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 402
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 404
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v4, v5, v7}, Lcom/android/settings_ex/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 409
    .end local v0    # "header":Landroid/widget/TextView;
    .end local v1    # "height":I
    .end local v2    # "lv":Landroid/widget/ListView;
    .end local v3    # "params":Landroid/widget/AbsListView$LayoutParams;
    :cond_2
    instance-of v4, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v4, :cond_3

    .line 410
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v8, v4, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 413
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->createHeader()V

    .line 415
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-virtual {v4, p3}, Lcom/android/settings_ex/applications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 417
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 589
    :cond_0
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroy()V

    .line 584
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 700
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 595
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onDestroyView()V

    .line 597
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 600
    :cond_0
    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 594
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 789
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 v2, p3, -0x1

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 791
    .local v1, "reallPosition":I
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 792
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 793
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 794
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mCurrentUid:I

    .line 795
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 787
    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 802
    if-nez p3, :cond_0

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->curPosition:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    if-eq v0, v3, :cond_0

    .line 803
    iput p3, p0, Lcom/android/settings_ex/applications/ManageApplications;->curPosition:I

    .line 804
    return-void

    .line 806
    :cond_0
    iput p3, p0, Lcom/android/settings_ex/applications/ManageApplications;->curPosition:I

    .line 807
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    .line 808
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->setFilter(I)V

    .line 810
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->emptyView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 817
    :cond_2
    sget-boolean v0, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selecting filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_3
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 821
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 732
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v10

    .line 733
    .local v10, "menuId":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 780
    return v1

    .line 736
    :sswitch_0
    iput v10, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    .line 737
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 782
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 783
    return v11

    .line 744
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    .line 745
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0

    :cond_1
    move v0, v11

    .line 744
    goto :goto_1

    .line 748
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ResetAppsHelper;->buildResetDialog()V

    .line 749
    return v11

    .line 751
    :sswitch_3
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v0, v11, :cond_2

    .line 752
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 753
    const-class v1, Lcom/android/settings_ex/notification/ConfigureNotificationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 754
    const v3, 0x7f0e0e66

    move-object v4, v2

    move-object v5, p0

    .line 752
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 760
    :goto_2
    return v11

    .line 756
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsActivity;

    .line 757
    const-class v1, Lcom/android/settings_ex/applications/AdvancedAppSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e0f32

    move-object v4, v2

    move-object v5, p0

    .line 756
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 763
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 764
    return v11

    .line 768
    :sswitch_5
    const/4 v8, 0x0

    .line 770
    .local v8, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v0, "com.android.settings_ex.action.BACKGROUND_OPTIMIZE_SWITCH"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    .local v9, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v0, "classname"

    .end local v8    # "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings_ex/Settings$BgOptimizeSwitchActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 776
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_3
    return v11

    .line 773
    .restart local v8    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v7

    .line 774
    .end local v8    # "intent":Landroid/content/Intent;
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    :goto_4
    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No activity found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 773
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v7

    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    move-object v8, v9

    .end local v9    # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    goto :goto_4

    .line 733
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f110412 -> :sswitch_3
        0x7f110413 -> :sswitch_1
        0x7f110414 -> :sswitch_1
        0x7f110415 -> :sswitch_0
        0x7f110416 -> :sswitch_0
        0x7f110417 -> :sswitch_2
        0x7f110418 -> :sswitch_5
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onPause()V

    .line 571
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 569
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 695
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 548
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onResume()V

    .line 549
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateView()V

    .line 550
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 551
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 553
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->-wrap2(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)V

    .line 547
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 559
    invoke-super {p0, p1}, Lcom/android/settings_ex/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 560
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/applications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 561
    const-string/jumbo v0, "sortOrder"

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 562
    const-string/jumbo v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 563
    const-string/jumbo v0, "hasEntries"

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->-get3(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 564
    const-string/jumbo v0, "hasBridge"

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mApplications:Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->-get2(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 565
    const-string/jumbo v0, "filterMode"

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilter:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 578
    invoke-super {p0}, Lcom/android/settings_ex/InstrumentedFragment;->onStop()V

    .line 579
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings_ex/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ResetAppsHelper;->stop()V

    .line 577
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 471
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 472
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f110129

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 474
    .local v5, "pinnedHeader":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    const/4 v4, -0x1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/settings_ex/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/ViewGroup;)V

    .line 470
    .end local v5    # "pinnedHeader":Landroid/widget/FrameLayout;
    :cond_0
    return-void
.end method

.method public setHasDisabled(Z)V
    .locals 2
    .param p1, "hasDisabledApps"    # Z

    .prologue
    .line 833
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-eqz v0, :cond_0

    .line 834
    return-void

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 837
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/settings_ex/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 832
    return-void
.end method

.method updateOptionsMenu()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 705
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 706
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110412

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 710
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 709
    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 712
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110415

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v0, v5, :cond_4

    .line 713
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    const v4, 0x7f110415

    if-eq v0, v4, :cond_3

    move v0, v1

    .line 712
    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 714
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110416

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v0, v5, :cond_6

    .line 715
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mSortOrder:I

    const v4, 0x7f110416

    if-eq v0, v4, :cond_5

    move v0, v1

    .line 714
    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 717
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110413

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    if-nez v0, :cond_8

    .line 718
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-eq v0, v6, :cond_7

    move v0, v1

    .line 717
    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 719
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110414

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z

    if-eqz v0, :cond_a

    .line 720
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-eq v0, v6, :cond_9

    move v0, v1

    .line 719
    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 722
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v3, 0x7f110418

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v3, v7, :cond_b

    :goto_5
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 723
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    if-ne v0, v7, :cond_1

    .line 724
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f110413

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 725
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f110417

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 704
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 710
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 713
    goto :goto_1

    :cond_4
    move v0, v2

    .line 712
    goto :goto_1

    :cond_5
    move v0, v2

    .line 715
    goto :goto_2

    :cond_6
    move v0, v2

    .line 714
    goto :goto_2

    :cond_7
    move v0, v2

    .line 718
    goto :goto_3

    :cond_8
    move v0, v2

    .line 717
    goto :goto_3

    :cond_9
    move v0, v2

    .line 720
    goto :goto_4

    :cond_a
    move v0, v2

    .line 719
    goto :goto_4

    :cond_b
    move v1, v2

    .line 722
    goto :goto_5
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->updateOptionsMenu()V

    .line 826
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 827
    .local v0, "host":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 824
    :cond_0
    return-void
.end method
