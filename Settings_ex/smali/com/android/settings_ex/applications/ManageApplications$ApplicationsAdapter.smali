.class Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation


# instance fields
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

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

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

.field private mFilter:Landroid/widget/Filter;

.field private mFilterMode:I

.field private mHasReceivedBridgeCallback:Z

.field private mHasReceivedLoadEntries:Z

.field private mLastSortMode:I

.field private final mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

.field private mOverrideFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResumed:Z

.field private final mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settings_exlib/applications/ApplicationsState;

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/ManageApplications;I)V
    .locals 4
    .param p1, "state"    # Lcom/android/settings_exlib/applications/ApplicationsState;
    .param p2, "manageApplications"    # Lcom/android/settings_ex/applications/ManageApplications;
    .param p3, "filterMode"    # I

    .prologue
    .line 775
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 748
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 749
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 756
    new-instance v0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 776
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    .line 777
    invoke-virtual {p1, p0}, Lcom/android/settings_exlib/applications/ApplicationsState;->newSession(Lcom/android/settings_exlib/applications/ApplicationsState$Callbacks;)Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    .line 778
    iput-object p2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    .line 779
    invoke-virtual {p2}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 780
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    .line 781
    iput p3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 782
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 783
    new-instance v0, Lcom/android/settings_ex/applications/AppStateNotificationBridge;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mNotifBackend:Lcom/android/settings_ex/notification/NotificationBackend;
    invoke-static {p2}, Lcom/android/settings_ex/applications/ManageApplications;->access$700(Lcom/android/settings_ex/applications/ManageApplications;)Lcom/android/settings_ex/notification/NotificationBackend;

    move-result-object v3

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/settings_ex/applications/AppStateNotificationBridge;-><init>(Landroid/content/pm/PackageManager;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;Lcom/android/settings_ex/notification/NotificationBackend;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    .line 796
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 786
    new-instance v0, Lcom/android/settings_ex/applications/AppStateUsageBridge;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings_ex/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    goto :goto_0

    .line 787
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 788
    new-instance v0, Lcom/android/settings_ex/applications/AppStatePowerBridge;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, v1, p0}, Lcom/android/settings_ex/applications/AppStatePowerBridge;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    goto :goto_0

    .line 789
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 790
    new-instance v0, Lcom/android/settings_ex/applications/AppStateOverlayBridge;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings_ex/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    goto :goto_0

    .line 791
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    .line 792
    new-instance v0, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings_ex/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState;Lcom/android/settings_ex/applications/AppStateBaseBridge$Callback;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    goto :goto_0

    .line 794
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 736
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 736
    invoke-direct {p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings_ex/applications/AppStateBaseBridge;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method private getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0c0d28

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1144
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 1145
    .local v0, "domainStatus":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 1146
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1156
    :goto_0
    return-object v2

    .line 1150
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v2, p1}, Lcom/android/settings_ex/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 1151
    .local v1, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1152
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1153
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1154
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0d29

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1156
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0d2a

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private updateLoading()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 920
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1000(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$900(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/settings_ex/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 922
    return-void

    :cond_0
    move v0, v1

    .line 920
    goto :goto_0
.end method

.method private updateSummary(Lcom/android/settings_ex/applications/AppViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings_ex/applications/AppViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 1090
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    .line 1126
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings_ex/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v0, v1}, Lcom/android/settings_ex/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 1129
    :goto_0
    return-void

    .line 1092
    :pswitch_1
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1093
    iget-object v1, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/notification/NotificationBackend$AppRow;

    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/settings_ex/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings_ex/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1096
    :cond_0
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1101
    :pswitch_2
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1105
    :pswitch_3
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1106
    iget-object v1, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    new-instance v2, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;

    iget-object v0, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v2, v0}, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings_ex/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0cd2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0cd3

    goto :goto_1

    .line 1109
    :cond_2
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1114
    :pswitch_4
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings_ex/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1118
    :pswitch_5
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings_ex/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1122
    :pswitch_6
    iget-object v0, p1, Lcom/android/settings_ex/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings_ex/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1090
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
    .end packed-switch
.end method


# virtual methods
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
    .line 926
    .local p2, "origEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v2, p2

    .line 939
    :cond_1
    return-object v2

    .line 929
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_exlib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 930
    .local v4, "prefixStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 931
    .local v5, "spacePrefixStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .local v2, "newEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 933
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 934
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 935
    .local v3, "nlabel":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 936
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1042
    const/4 v0, 0x0

    return v0
.end method

.method public getAppEntry(I)Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1025
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
    .line 1133
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1058
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings_ex/applications/ManageApplications;->access$1200(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/settings_ex/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings_ex/applications/AppViewHolder;

    move-result-object v1

    .line 1059
    .local v1, "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    iget-object p2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 1062
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 1063
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 1064
    :try_start_0
    iput-object v0, v1, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 1065
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1066
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/settings_exlib/applications/ApplicationsState;->ensureIcon(Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;)V

    .line 1069
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 1070
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1072
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings_ex/applications/AppViewHolder;)V

    .line 1073
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 1074
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1075
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0c07bf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1082
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1083
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1084
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1086
    return-object p2

    .line 1076
    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    .line 1077
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1078
    iget-object v2, v1, Lcom/android/settings_ex/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0c07be

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1082
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1080
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

    .line 1047
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v2, v2, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return v1

    .line 1050
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    .line 1051
    .local v0, "entry":Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;
    invoke-static {}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 1019
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v1, 0x7f120312

    if-ne v0, v1, :cond_0

    .line 1020
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1022
    :cond_0
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    .prologue
    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    .line 946
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 947
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1013
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1015
    :cond_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 987
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1139
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 982
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 975
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 976
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 991
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 992
    iget-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/applications/AppViewHolder;

    .line 993
    .local v0, "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    iget-object v2, v0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 994
    iget-object v3, v0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 995
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings_ex/applications/AppViewHolder;)V

    .line 996
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    iget-object v2, v0, Lcom/android/settings_ex/applications/AppViewHolder;->entry:Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/applications/ManageApplications;->access$1100(Lcom/android/settings_ex/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v3, 0x7f120312

    if-ne v2, v3, :cond_0

    .line 1003
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 1008
    .end local v0    # "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    :cond_0
    return-void

    .line 996
    .restart local v0    # "holder":Lcom/android/settings_ex/applications/AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 991
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 966
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$900(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings_ex/applications/ManageApplications;->access$1000(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 968
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 969
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 970
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 971
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 952
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 825
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 827
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->pause()V

    .line 828
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->pause()V

    .line 832
    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1
    .param p1, "sort"    # I

    .prologue
    .line 842
    iget v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 847
    :goto_0
    return-void

    .line 845
    :cond_0
    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 846
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 9
    .param p1, "eraseold"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 850
    iget-boolean v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-eqz v5, :cond_1

    .line 917
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    sget-boolean v5, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    if-eqz v5, :cond_2

    .line 855
    const-string v5, "ManageApplications"

    const-string v6, "Rebuilding app list..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_2
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 859
    .local v1, "emulated":Z
    if-eqz v1, :cond_7

    .line 860
    iput v7, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 864
    :goto_1
    sget-object v5, Lcom/android/settings_ex/applications/ManageApplications;->FILTERS:[Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    iget v6, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    aget-object v3, v5, v6

    .line 865
    .local v3, "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    if-eqz v5, :cond_3

    .line 866
    iget-object v3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 868
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mShowSystem:Z
    invoke-static {v5}, Lcom/android/settings_ex/applications/ManageApplications;->access$800(Lcom/android/settings_ex/applications/ManageApplications;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 869
    new-instance v4, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;

    sget-object v5, Lcom/android/settings_exlib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    invoke-direct {v4, v3, v5}, Lcom/android/settings_exlib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;)V

    .end local v3    # "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .local v4, "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    move-object v3, v4

    .line 871
    .end local v4    # "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    .restart local v3    # "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    :cond_4
    iget v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v5, :pswitch_data_0

    .line 886
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 889
    .local v0, "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v5, v3, v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 890
    .local v2, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_5

    if-eqz p1, :cond_0

    .line 894
    :cond_5
    iput-object v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 895
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    .line 896
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v5, v6}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 900
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 902
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v5}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/settings_ex/applications/ManageApplications;->access$900(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_6

    .line 908
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/settings_ex/applications/ManageApplications;->access$1000(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    # getter for: Lcom/android/settings_ex/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v6}, Lcom/android/settings_ex/applications/ManageApplications;->access$900(Lcom/android/settings_ex/applications/ManageApplications;)Landroid/view/View;

    move-result-object v6

    invoke-static {v5, v6, v8, v7}, Lcom/android/settings_ex/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 911
    :cond_6
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget v5, v5, Lcom/android/settings_ex/applications/ManageApplications;->mListType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 916
    iget-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings_ex/applications/ManageApplications;

    iget-object v6, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings_exlib/applications/ApplicationsState;

    invoke-virtual {v6}, Lcom/android/settings_exlib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/applications/ManageApplications;->setHasDisabled(Z)V

    goto/16 :goto_0

    .line 862
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    .end local v3    # "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    :cond_7
    iput v8, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 873
    .restart local v3    # "filterObj":Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;
    :pswitch_0
    iget v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v5, :pswitch_data_1

    .line 881
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 882
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 875
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_1
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 876
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 878
    .end local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :pswitch_2
    sget-object v0, Lcom/android/settings_exlib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 879
    .restart local v0    # "comparatorObj":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 898
    .restart local v2    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_exlib/applications/ApplicationsState$AppEntry;>;"
    :cond_8
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_3

    .line 871
    :pswitch_data_0
    .packed-switch 0x7f120312
        :pswitch_0
    .end packed-switch

    .line 873
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->release()V

    .line 836
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->release()V

    .line 839
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 4
    .param p1, "sort"    # I

    .prologue
    const/4 v3, 0x1

    .line 809
    sget-boolean v0, Lcom/android/settings_ex/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 810
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2

    .line 812
    iput-boolean v3, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 813
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settings_exlib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_exlib/applications/ApplicationsState$Session;->resume()V

    .line 814
    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 815
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings_ex/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings_ex/applications/AppStateBaseBridge;->resume()V

    .line 818
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 822
    :goto_0
    return-void

    .line 820
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method

.method public setFilter(I)V
    .locals 1
    .param p1, "filter"    # I

    .prologue
    .line 804
    iput p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    .line 805
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 806
    return-void
.end method

.method public setOverrideFilter(Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;)V
    .locals 1
    .param p1, "overrideFilter"    # Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settings_exlib/applications/ApplicationsState$AppFilter;

    .line 800
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 801
    return-void
.end method
