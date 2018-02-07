.class Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;,
        Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;,
        Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;,
        Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;
    }
.end annotation


# instance fields
.field private final EMPTY_SECTIONS:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mDomainsSymmaryCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

.field private final mFgHandler:Landroid/os/Handler;

.field private mFilter:Landroid/widget/Filter;

.field private mFilterMode:I

.field private mHasReceivedBridgeCallback:Z

.field private mHasReceivedLoadEntries:Z

.field private mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

.field private mLastSortMode:I

.field private final mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

.field private mOverrideFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPositionToSectionIndex:[I

.field private mResumed:Z

.field private mSections:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

.field private final mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settings_exlib/applications/ApplicationsState;

.field private mWhichSize:I

.field final synthetic this$0:Lcom/android/settings_ex/applications/ManageApplications;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings_ex/applications/AppStateBaseBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuildSections()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings_ex/applications/ManageApplications;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/ManageApplications;I)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/settings_ex/applications/ManageApplications;
    .param p2, "state"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p3, "manageApplications"    # Lcom/android/settings_ex/applications/ManageApplications;
    .param p4, "filterMode"    # I

    .prologue
    const/4 v1, 0x0

    .line 925
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 878
    new-array v0, v1, [Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    .line 884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 892
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 893
    iput v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 901
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    .line 904
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 1319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mDomainsSymmaryCaches:Ljava/util/Map;

    .line 927
    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 928
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFgHandler:Landroid/os/Handler;

    .line 929
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settings_exlib/applications/ApplicationsState;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBgHandler:Landroid/os/Handler;

    .line 930
    invoke-virtual {p2, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 931
    iput-object p3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    .line 932
    invoke-virtual {p3}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 933
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 934
    iput p4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 935
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 936
    new-instance v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 937
    invoke-static {p3}, Lcom/android/settings_ex/applications/ManageApplications;->-get6(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/notification/NotificationBackend;

    move-result-object v3

    .line 936
    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/settings_ex/applications/AppStateNotificationBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;Lcom/android/settings_ex/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    .line 926
    :goto_0
    return-void

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 939
    new-instance v0, Lcom/android/settings_ex/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings_ex/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    goto :goto_0

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 941
    new-instance v0, Lcom/android/settings_ex/applications/AppStatePowerBridge;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ex/applications/AppStatePowerBridge;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    goto :goto_0

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 943
    new-instance v0, Lcom/android/settings_ex/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings_ex/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    goto :goto_0

    .line 944
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 945
    new-instance v0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    goto :goto_0

    .line 947
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 948
    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    goto :goto_0

    .line 951
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    goto :goto_0
.end method

.method private getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const v6, 0x7f0e0f0c

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1441
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 1442
    .local v0, "domainStatus":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1443
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1447
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v2, p1}, Lcom/android/settings_ex/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 1448
    .local v1, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1449
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1450
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1451
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0e0f0d

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1453
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0e0f0e

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z
    .locals 2
    .param p1, "info1"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "info2"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    const/4 v1, 0x0

    .line 1058
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1059
    :cond_0
    return v1

    .line 1061
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1062
    :cond_2
    return v1

    .line 1064
    :cond_3
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private rebuildSections()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1125
    iget-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {v10}, Lcom/android/settings_ex/applications/ManageApplications;->-get4(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->isFastScrollEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1127
    iget-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    if-nez v10, :cond_2

    .line 1128
    iget-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    .line 1129
    .local v5, "locales":Landroid/os/LocaleList;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v10

    if-nez v10, :cond_0

    .line 1130
    new-instance v5, Landroid/os/LocaleList;

    .end local v5    # "locales":Landroid/os/LocaleList;
    new-array v10, v13, [Ljava/util/Locale;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v11, v10, v12

    invoke-direct {v5, v10}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 1132
    .restart local v5    # "locales":Landroid/os/LocaleList;
    :cond_0
    new-instance v1, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v5, v12}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    .line 1133
    .local v1, "index":Landroid/icu/text/AlphabeticIndex;
    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v4

    .line 1134
    .local v4, "localeCount":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1135
    new-array v10, v13, [Ljava/util/Locale;

    invoke-virtual {v5, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v1, v10}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 1134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    :cond_1
    new-array v10, v13, [Ljava/util/Locale;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v11, v10, v12

    invoke-virtual {v1, v10}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    .line 1139
    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    .line 1142
    .end local v0    # "i":I
    .end local v1    # "index":Landroid/icu/text/AlphabeticIndex;
    .end local v4    # "localeCount":I
    .end local v5    # "locales":Landroid/os/LocaleList;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    .local v8, "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;>;"
    const/4 v3, -0x1

    .line 1144
    .local v3, "lastSecId":I
    iget-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1145
    .local v9, "totalEntries":I
    new-array v10, v9, [I

    iput-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    .line 1147
    const/4 v6, 0x0

    .local v6, "pos":I
    :goto_1
    if-ge v6, v9, :cond_5

    .line 1148
    iget-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v10, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    .line 1149
    .local v2, "label":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string/jumbo v2, ""

    .end local v2    # "label":Ljava/lang/String;
    :cond_3
    invoke-virtual {v10, v2}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v7

    .line 1150
    .local v7, "secId":I
    if-eq v7, v3, :cond_4

    .line 1151
    move v3, v7

    .line 1152
    new-instance v10, Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    iget-object v11, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v11, v7}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v6}, Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1154
    :cond_4
    iget-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    aput v11, v10, v6

    .line 1147
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1156
    .end local v7    # "secId":I
    :cond_5
    iget-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    iput-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    .line 1124
    .end local v3    # "lastSecId":I
    .end local v6    # "pos":I
    .end local v8    # "sections":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;>;"
    .end local v9    # "totalEntries":I
    :goto_2
    return-void

    .line 1158
    :cond_6
    iget-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    iput-object v10, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    .line 1159
    iput-object v11, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    goto :goto_2
.end method

.method private removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1070
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1072
    .local v5, "size":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1076
    .local v4, "returnEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 1077
    .local v3, "lastInfo":Landroid/content/pm/PackageItemInfo;
    const/4 v1, 0x0

    .end local v3    # "lastInfo":Landroid/content/pm/PackageItemInfo;
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 1078
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 1079
    .local v0, "appEntry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 1080
    .local v2, "info":Landroid/content/pm/PackageItemInfo;
    iget-object v6, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v3, v6}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1081
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    :cond_0
    move-object v3, v2

    .line 1077
    .local v3, "lastInfo":Landroid/content/pm/PackageItemInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1085
    .end local v0    # "appEntry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v2    # "info":Landroid/content/pm/PackageItemInfo;
    .end local v3    # "lastInfo":Landroid/content/pm/PackageItemInfo;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    .line 1086
    return-object v4
.end method

.method private updateLoading()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1164
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->-get5(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    .line 1165
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->-get3(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    .line 1166
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1164
    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/settings_ex/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 1163
    return-void

    :cond_0
    move v0, v1

    .line 1166
    goto :goto_0
.end method

.method private updateSummary(Lcom/android/settings_ex/applications/AppViewHolder;)V
    .locals 7
    .param p1, "holder"    # Lcom/android/settings_ex/applications/AppViewHolder;

    .prologue
    const/4 v5, 0x0

    .line 1364
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v4, v4, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    packed-switch v4, :pswitch_data_0

    .line 1423
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget-object v4, v4, Lcom/android/settings_ex/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v4, v5}, Lcom/android/settings_ex/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 1363
    :goto_0
    return-void

    .line 1368
    :pswitch_1
    :try_start_0
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 1369
    iget-object v5, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    .line 1370
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 1369
    invoke-static {v4, v6}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings_ex/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1374
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1372
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_0
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1381
    :pswitch_2
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1382
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1383
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getSummaryFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1384
    .local v0, "domainsSummary":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1385
    new-instance v2, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;-><init>(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Ljava/lang/String;)V

    .line 1387
    .local v2, "loadSummaryAsyncTask":Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;
    iget-object v4, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {v4}, Lcom/android/settings_ex/applications/ManageApplications;->-get9(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1389
    .end local v2    # "loadSummaryAsyncTask":Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$LoadSummaryAsyncTask;
    :cond_1
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1395
    .end local v0    # "domainsSummary":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :pswitch_3
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 1396
    iget-object v5, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    new-instance v6, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v6, v4}, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v6}, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1397
    const v4, 0x7f0e0eb8

    .line 1396
    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1398
    :cond_2
    const v4, 0x7f0e0eb9

    goto :goto_1

    .line 1400
    :cond_3
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1405
    :pswitch_4
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-static {v5, v6}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1409
    :pswitch_5
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-static {v5, v6}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1413
    :pswitch_6
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 1414
    iget-object v6, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 1413
    invoke-static {v5, v6}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1418
    :pswitch_7
    iget-object v4, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-static {v5, v6}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeDetail;->getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method synthetic -com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V
    .locals 3
    .param p1, "finalFilterObj"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .param p2, "comparatorObj"    # Ljava/util/Comparator;

    .prologue
    .line 1048
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 1049
    const/4 v2, 0x0

    .line 1048
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 1050
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    if-eqz v0, :cond_0

    .line 1051
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;-><init>(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 0
    :cond_0
    return-void
.end method

.method synthetic -com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$2(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "entries"    # Ljava/util/ArrayList;

    .prologue
    .line 1051
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->onRebuildComplete(Ljava/util/ArrayList;)V

    .line 0
    return-void
.end method

.method public addSummaryToCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mDomainsSymmaryCaches:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getSummaryFromCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mDomainsSymmaryCaches:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    :cond_0
    return-void
.end method

.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1171
    .local p2, "origEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 1172
    :cond_0
    return-object p2

    .line 1174
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_exlib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1175
    .local v4, "prefixStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1177
    .local v5, "spacePrefixStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v2, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1179
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 1180
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 1181
    .local v3, "nlabel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 1182
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1185
    .end local v0    # "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .end local v3    # "nlabel":Ljava/lang/String;
    :cond_4
    return-object v2
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1271
    const/4 v0, 0x0

    return v0
.end method

.method public getAppEntry(I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "sectionIndex"    # I

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;->position:I

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    return-object v0
.end method

.method public getSummaryFromCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1328
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mDomainsSymmaryCaches:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mDomainsSymmaryCaches:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1331
    :cond_0
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1286
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications;->-get2(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/settings_ex/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings_ex/applications/AppViewHolder;

    move-result-object v1

    .line 1288
    .local v1, "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    iget-object p2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 1291
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 1292
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 1293
    :try_start_0
    iput-object v0, v1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 1294
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1295
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->ensureIcon(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 1298
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1299
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1301
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings_ex/applications/AppViewHolder;)V

    .line 1302
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 1303
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1304
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0e09fe

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    .line 1312
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1313
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1315
    return-object p2

    .line 1305
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    .line 1306
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1307
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0e09fd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1292
    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    .line 1309
    :cond_3
    :try_start_2
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 1276
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v2, v2, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 1277
    return v1

    .line 1279
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 1280
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    return v1
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 1248
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v1, 0x7f110407

    if-ne v0, v1, :cond_0

    .line 1249
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1247
    :cond_0
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    .prologue
    .line 1191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    .line 1192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1190
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->-get7(Lcom/android/settings_ex/applications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1240
    :cond_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    .prologue
    .line 1213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 1215
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1212
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1434
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 1206
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 1202
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1201
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1221
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/AppViewHolder;

    .line 1222
    .local v0, "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    iget-object v2, v0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1223
    iget-object v2, v0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    .line 1224
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings_ex/applications/AppViewHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1226
    iget-object v2, v0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageApplications;->-get0(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1227
    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v3, 0x7f110407

    if-ne v2, v3, :cond_0

    .line 1232
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1234
    :cond_0
    return-void

    .line 1223
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 1220
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1219
    .end local v0    # "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    :cond_2
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1091
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    if-eqz v0, :cond_0

    .line 1092
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    if-ne v0, v3, :cond_1

    .line 1093
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1095
    :cond_1
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 1096
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1097
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 1098
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuildSections()V

    .line 1105
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 1107
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1108
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->-get3(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1112
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->-get5(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    .line 1113
    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings_ex/applications/ManageApplications;->-get3(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v1

    .line 1112
    invoke-static {v0, v1, v3, v2}, Lcom/android/settings_ex/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 1116
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 1118
    return-void

    .line 1100
    :cond_3
    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 1101
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings_ex/applications/ManageApplications$SectionInfo;

    .line 1102
    iput-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    goto :goto_0

    .line 1121
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v1}, Lcom/android/settings_exlib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/ManageApplications;->setHasDisabled(Z)V

    .line 1090
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1196
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 981
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 982
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 983
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->pause()V

    .line 984
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->pause()V

    .line 980
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .param p1, "sort"    # I

    .prologue
    .line 998
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 999
    return-void

    .line 1001
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 1002
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 997
    return-void
.end method

.method public rebuild(Z)V
    .locals 7
    .param p1, "eraseold"    # Z

    .prologue
    .line 1006
    iget-boolean v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v5, :cond_4

    .line 1007
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-eqz v5, :cond_4

    .line 1011
    :cond_0
    sget-boolean v5, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "ManageApplications"

    const-string/jumbo v6, "Rebuilding app list..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 1015
    .local v1, "emulated":Z
    if-eqz v1, :cond_5

    .line 1016
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 1020
    :goto_0
    sget-object v5, Lcom/android/settings_ex/applications/ManageApplications;->FILTERS:[Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    iget v6, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    aget-object v2, v5, v6

    .line 1021
    .local v2, "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    if-eqz v5, :cond_2

    .line 1022
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1024
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-static {v5}, Lcom/android/settings_ex/applications/ManageApplications;->-get7(Lcom/android/settings_ex/applications/ManageApplications;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1025
    new-instance v3, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;

    .line 1026
    sget-object v5, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 1025
    invoke-direct {v3, v2, v5}, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;)V

    .end local v2    # "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .local v3, "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    move-object v2, v3

    .line 1028
    .end local v3    # "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .restart local v2    # "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    :cond_3
    iget v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v5, :pswitch_data_0

    .line 1043
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 1046
    .local v0, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :goto_1
    move-object v4, v2

    .line 1047
    .local v4, "finalFilterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBgHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;

    invoke-direct {v6, p0, v4, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;-><init>(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1005
    return-void

    .line 1009
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v1    # "emulated":Z
    .end local v2    # "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .end local v4    # "finalFilterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    :cond_4
    return-void

    .line 1018
    .restart local v1    # "emulated":Z
    :cond_5
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 1030
    .restart local v2    # "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    :pswitch_0
    iget v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v5, :pswitch_data_1

    .line 1038
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_1

    .line 1032
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_1
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_1

    .line 1035
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_2
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_1

    .line 1028
    :pswitch_data_0
    .packed-switch 0x7f110407
        :pswitch_0
    .end packed-switch

    .line 1030
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->release()V

    .line 992
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->release()V

    .line 990
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 3
    .param p1, "sort"    # I

    .prologue
    .line 966
    sget-boolean v0, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2

    .line 968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 969
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->resume()V

    .line 970
    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 971
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->resume()V

    .line 974
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 965
    :goto_0
    return-void

    .line 976
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method

.method public setFilter(I)V
    .locals 1
    .param p1, "filter"    # I

    .prologue
    .line 961
    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 962
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 960
    return-void
.end method

.method public setOverrideFilter(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;)V
    .locals 1
    .param p1, "overrideFilter"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .prologue
    .line 956
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 957
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 955
    return-void
.end method
