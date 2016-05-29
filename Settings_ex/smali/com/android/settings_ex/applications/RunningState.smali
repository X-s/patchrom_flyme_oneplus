.class public Lcom/android/settings_ex/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings_ex/applications/RunningState$MergedItem;,
        Lcom/android/settings_ex/applications/RunningState$ProcessItem;,
        Lcom/android/settings_ex/applications/RunningState$ServiceItem;,
        Lcom/android/settings_ex/applications/RunningState$BaseItem;,
        Lcom/android/settings_ex/applications/RunningState$UserState;,
        Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static final CONTENTS_UPDATE_DELAY:J = 0x7d0L

.field static final DEBUG_COMPARE:Z = false

.field static final MAX_SERVICES:I = 0x64

.field static final MSG_REFRESH_UI:I = 0x3

.field static final MSG_RESET_CONTENTS:I = 0x1

.field static final MSG_UPDATE_CONTENTS:I = 0x2

.field static final MSG_UPDATE_TIME:I = 0x4

.field static final TAG:Ljava/lang/String; = "RunningState"

.field static final TIME_UPDATE_DELAY:J = 0x3e8L

.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings_ex/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$UserState;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/settings_ex/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings_ex/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings_ex/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 143
    iput v1, p0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    .line 145
    new-instance v0, Lcom/android/settings_ex/applications/RunningState$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/RunningState$1;-><init>(Lcom/android/settings_ex/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 206
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 257
    new-instance v0, Lcom/android/settings_ex/applications/RunningState$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/RunningState$2;-><init>(Lcom/android/settings_ex/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 743
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 744
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 745
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 746
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 747
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    .line 748
    iget v0, p0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningState;->mHideManagedProfiles:Z

    .line 749
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/RunningState;->mResumed:Z

    .line 750
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 751
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 752
    new-instance v0, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings_ex/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    .line 753
    return-void

    :cond_0
    move v0, v1

    .line 748
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/applications/RunningState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/applications/RunningState;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/applications/RunningState;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/app/ActivityManager;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ex/applications/RunningState$MergedItem;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "newItem"    # Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 832
    .local p2, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .local p3, "userItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    iget v4, p4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 833
    .local v2, "userItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    if-eqz v2, :cond_0

    iget v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mCurSeq:I

    iget v5, p0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    if-eq v4, v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 834
    .local v0, "first":Z
    :goto_0
    if-eqz v0, :cond_7

    .line 835
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    iget v5, p4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/applications/RunningState$UserState;

    .line 836
    .local v3, "userState":Lcom/android/settings_ex/applications/RunningState$UserState;
    if-eqz v3, :cond_3

    iget-object v1, v3, Lcom/android/settings_ex/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 838
    .local v1, "info":Landroid/content/pm/UserInfo;
    :goto_1
    if-nez v1, :cond_4

    .line 861
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    .end local v3    # "userState":Lcom/android/settings_ex/applications/RunningState$UserState;
    :cond_1
    :goto_2
    return-void

    .line 833
    .end local v0    # "first":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 836
    .restart local v0    # "first":Z
    .restart local v3    # "userState":Lcom/android/settings_ex/applications/RunningState$UserState;
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v5, p4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    goto :goto_1

    .line 842
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings_ex/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-nez v4, :cond_1

    .line 845
    :cond_5
    if-nez v2, :cond_8

    .line 846
    new-instance v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .end local v2    # "userItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v2, v4}, Lcom/android/settings_ex/applications/RunningState$MergedItem;-><init>(I)V

    .line 847
    .restart local v2    # "userItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget v4, p4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 851
    :goto_3
    iget v4, p0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    iput v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mCurSeq:I

    .line 852
    if-nez v3, :cond_6

    .line 853
    new-instance v4, Lcom/android/settings_ex/applications/RunningState$UserState;

    invoke-direct {v4}, Lcom/android/settings_ex/applications/RunningState$UserState;-><init>()V

    iput-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    .line 854
    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    iput-object v1, v4, Lcom/android/settings_ex/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 855
    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    iget-object v5, p0, Lcom/android/settings_ex/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v5, v1}, Lcom/android/settings_ex/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings_ex/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 856
    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    invoke-static {p1, v1}, Lcom/android/settings_ex/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settings_ex/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 858
    :cond_6
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    .end local v3    # "userState":Lcom/android/settings_ex/applications/RunningState$UserState;
    :cond_7
    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 849
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    .restart local v3    # "userState":Lcom/android/settings_ex/applications/RunningState$UserState;
    :cond_8
    iget-object v4, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_3
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings_ex/applications/RunningState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 734
    sget-object v1, Lcom/android/settings_ex/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 735
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/applications/RunningState;->sInstance:Lcom/android/settings_ex/applications/RunningState;

    if-nez v0, :cond_0

    .line 736
    new-instance v0, Lcom/android/settings_ex/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/applications/RunningState;->sInstance:Lcom/android/settings_ex/applications/RunningState;

    .line 738
    :cond_0
    sget-object v0, Lcom/android/settings_ex/applications/RunningState;->sInstance:Lcom/android/settings_ex/applications/RunningState;

    monitor-exit v1

    return-object v0

    .line 739
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    const/4 v0, 0x1

    .line 807
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 817
    :cond_0
    :goto_0
    return v0

    .line 810
    :cond_1
    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0xaa

    if-ge v1, v2, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-eqz v1, :cond_0

    .line 817
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 717
    if-eqz p2, :cond_2

    iget v2, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v2, :cond_0

    iget-object v2, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 719
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 720
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    .line 730
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-object v0

    .line 725
    :cond_2
    move-object v0, p1

    .line 726
    .local v0, "label":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 727
    .local v1, "tail":I
    if-ltz v1, :cond_1

    .line 728
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 822
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 823
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 824
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 825
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 826
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 827
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 828
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 64
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 864
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v45

    .line 866
    .local v45, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    add-int/lit8 v60, v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    .line 868
    const/16 v18, 0x0

    .line 872
    .local v18, "changed":Z
    const/16 v60, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v52

    .line 874
    .local v52, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v52, :cond_1

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v11

    .line 875
    .local v11, "NS":I
    :goto_0
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    move/from16 v0, v26

    if-ge v0, v11, :cond_3

    .line 876
    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 880
    .local v53, "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v60, v0

    if-nez v60, :cond_2

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v60, v0

    if-nez v60, :cond_2

    .line 881
    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 882
    add-int/lit8 v26, v26, -0x1

    .line 883
    add-int/lit8 v11, v11, -0x1

    .line 875
    :cond_0
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 874
    .end local v11    # "NS":I
    .end local v26    # "i":I
    .end local v53    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 888
    .restart local v11    # "NS":I
    .restart local v26    # "i":I
    .restart local v53    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v60, v0

    and-int/lit8 v60, v60, 0x8

    if-eqz v60, :cond_0

    .line 890
    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 891
    add-int/lit8 v26, v26, -0x1

    .line 892
    add-int/lit8 v11, v11, -0x1

    .line 893
    goto :goto_2

    .line 899
    .end local v53    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v47

    .line 901
    .local v47, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v47, :cond_4

    invoke-interface/range {v47 .. v47}, Ljava/util/List;->size()I

    move-result v9

    .line 902
    .local v9, "NP":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    .line 903
    const/16 v26, 0x0

    :goto_4
    move/from16 v0, v26

    if-ge v0, v9, :cond_5

    .line 904
    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 905
    .local v41, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    new-instance v62, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v62

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v60 .. v62}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 903
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 901
    .end local v9    # "NP":I
    .end local v41    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 910
    .restart local v9    # "NP":I
    :cond_5
    const/16 v26, 0x0

    :goto_5
    move/from16 v0, v26

    if-ge v0, v11, :cond_7

    .line 911
    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 912
    .restart local v53    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v53

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v60, v0

    const-wide/16 v62, 0x0

    cmp-long v60, v60, v62

    if-nez v60, :cond_6

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v60, v0

    if-lez v60, :cond_6

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;

    .line 914
    .local v13, "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_6

    .line 915
    const/16 v60, 0x1

    move/from16 v0, v60

    iput-boolean v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 916
    move-object/from16 v0, v53

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v60, v0

    if-eqz v60, :cond_6

    .line 917
    const/16 v60, 0x1

    move/from16 v0, v60

    iput-boolean v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 910
    .end local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    .line 924
    .end local v53    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v26, 0x0

    :goto_6
    move/from16 v0, v26

    if-ge v0, v11, :cond_13

    .line 925
    move-object/from16 v0, v52

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 932
    .restart local v53    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v53

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v60, v0

    const-wide/16 v62, 0x0

    cmp-long v60, v60, v62

    if-nez v60, :cond_b

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v60, v0

    if-lez v60, :cond_b

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;

    .line 934
    .restart local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_b

    iget-boolean v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v60, v0

    if-nez v60, :cond_b

    .line 940
    iget-object v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0x12c

    move/from16 v0, v60

    move/from16 v1, v61

    if-ge v0, v1, :cond_b

    .line 944
    const/16 v55, 0x0

    .line 945
    .local v55, "skip":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    iget-object v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;

    .line 946
    .restart local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    :goto_7
    if-eqz v13, :cond_9

    .line 947
    iget-boolean v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v60, v0

    if-nez v60, :cond_8

    iget-object v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v60

    if-eqz v60, :cond_a

    .line 948
    :cond_8
    const/16 v55, 0x1

    .line 953
    :cond_9
    if-eqz v55, :cond_b

    .line 924
    .end local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    .end local v55    # "skip":Z
    :goto_8
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_6

    .line 951
    .restart local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    .restart local v55    # "skip":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    iget-object v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;

    .restart local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    goto :goto_7

    .line 960
    .end local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    .end local v55    # "skip":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    .line 961
    .local v48, "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    if-nez v48, :cond_c

    .line 962
    new-instance v48, Ljava/util/HashMap;

    .end local v48    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v48 .. v48}, Ljava/util/HashMap;-><init>()V

    .line 963
    .restart local v48    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v61, v0

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 965
    :cond_c
    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 966
    .local v46, "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    if-nez v46, :cond_d

    .line 967
    const/16 v18, 0x1

    .line 968
    new-instance v46, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v60, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move/from16 v2, v60

    move-object/from16 v3, v61

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 969
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v53

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v60

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    :cond_d
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_11

    .line 973
    move-object/from16 v0, v53

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v60, v0

    const-wide/16 v62, 0x0

    cmp-long v60, v60, v62

    if-nez v60, :cond_12

    move-object/from16 v0, v53

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v42, v0

    .line 974
    .local v42, "pid":I
    :goto_9
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    move/from16 v0, v42

    move/from16 v1, v60

    if-eq v0, v1, :cond_10

    .line 975
    const/16 v18, 0x1

    .line 976
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    move/from16 v0, v60

    move/from16 v1, v42

    if-eq v0, v1, :cond_10

    .line 977
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-eqz v60, :cond_e

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->remove(I)V

    .line 980
    :cond_e
    if-eqz v42, :cond_f

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v42

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 983
    :cond_f
    move/from16 v0, v42

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    .line 986
    :cond_10
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    .line 987
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 989
    .end local v42    # "pid":I
    :cond_11
    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v60

    or-int v18, v18, v60

    goto/16 :goto_8

    .line 973
    :cond_12
    const/16 v42, 0x0

    goto :goto_9

    .line 994
    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .end local v48    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    .end local v53    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_13
    const/16 v26, 0x0

    :goto_a
    move/from16 v0, v26

    if-ge v0, v9, :cond_18

    .line 995
    move-object/from16 v0, v47

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 996
    .restart local v41    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 997
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    if-nez v46, :cond_15

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v46

    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    check-cast v46, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1002
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    if-nez v46, :cond_14

    .line 1003
    const/16 v18, 0x1

    .line 1004
    new-instance v46, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v60, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move/from16 v2, v60

    move-object/from16 v3, v61

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1005
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v61, v0

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1008
    :cond_14
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    .line 1011
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v60

    if-eqz v60, :cond_17

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v60

    if-nez v60, :cond_16

    .line 1013
    const/16 v18, 0x1

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1017
    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1018
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1023
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1024
    move-object/from16 v0, v41

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 994
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_a

    .line 1020
    :cond_17
    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v46

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 1029
    .end local v41    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1030
    .local v10, "NRP":I
    const/16 v26, 0x0

    :goto_c
    move/from16 v0, v26

    if-ge v0, v10, :cond_1d

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1032
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_1c

    .line 1033
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v20, v0

    .line 1034
    .local v20, "clientPid":I
    if-eqz v20, :cond_1b

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1036
    .local v19, "client":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    if-nez v19, :cond_19

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "client":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    check-cast v19, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1039
    .restart local v19    # "client":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_19
    if-eqz v19, :cond_1a

    .line 1040
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    move-object/from16 v0, v60

    move/from16 v1, v61

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1048
    .end local v19    # "client":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_1a
    :goto_d
    add-int/lit8 v26, v26, 0x1

    .line 1049
    goto :goto_c

    .line 1046
    :cond_1b
    const/16 v60, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    goto :goto_d

    .line 1050
    .end local v20    # "clientPid":I
    :cond_1c
    const/16 v18, 0x1

    .line 1051
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v61

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->remove(I)V

    .line 1052
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_c

    .line 1057
    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1058
    .local v8, "NHP":I
    const/16 v26, 0x0

    :goto_e
    move/from16 v0, v26

    if-ge v0, v8, :cond_20

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1060
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v60, v0

    if-eqz v60, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v60

    if-nez v60, :cond_1f

    .line 1061
    :cond_1e
    const/16 v18, 0x1

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1063
    add-int/lit8 v26, v26, -0x1

    .line 1064
    add-int/lit8 v8, v8, -0x1

    .line 1058
    :cond_1f
    add-int/lit8 v26, v26, 0x1

    goto :goto_e

    .line 1071
    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1072
    .local v6, "NAP":I
    const/16 v26, 0x0

    :goto_f
    move/from16 v0, v26

    if-ge v0, v6, :cond_22

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1074
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_21

    .line 1075
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-object/from16 v2, v45

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v60

    or-int v18, v18, v60

    .line 1072
    :cond_21
    add-int/lit8 v26, v26, 0x1

    goto :goto_f

    .line 1080
    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_22
    const/16 v58, 0x0

    .line 1081
    .local v58, "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v60

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_2a

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/util/HashMap;

    .line 1083
    .restart local v48    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v48 .. v48}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .line 1084
    .local v44, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    :cond_23
    :goto_11
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_29

    .line 1085
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1086
    .local v41, "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_26

    .line 1087
    move-object/from16 v0, v41

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1088
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-nez v60, :cond_24

    .line 1091
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->clear()V

    .line 1107
    :cond_24
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v54

    .line 1108
    .local v54, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningState$ServiceItem;>;"
    :cond_25
    :goto_12
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_23

    .line 1109
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 1110
    .local v53, "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_25

    .line 1111
    const/16 v18, 0x1

    .line 1112
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 1094
    .end local v53    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    .end local v54    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningState$ServiceItem;>;"
    :cond_26
    const/16 v18, 0x1

    .line 1095
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->remove()V

    .line 1096
    invoke-virtual/range {v48 .. v48}, Ljava/util/HashMap;->size()I

    move-result v60

    if-nez v60, :cond_28

    .line 1097
    if-nez v58, :cond_27

    .line 1098
    new-instance v58, Ljava/util/ArrayList;

    .end local v58    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    .restart local v58    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    move-object/from16 v0, v58

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    :cond_28
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-eqz v60, :cond_23

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 1081
    .end local v41    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_29
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_10

    .line 1118
    .end local v44    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    .end local v48    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    :cond_2a
    if-eqz v58, :cond_2b

    .line 1119
    const/16 v26, 0x0

    :goto_13
    invoke-virtual/range {v58 .. v58}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_2b

    .line 1120
    move-object/from16 v0, v58

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/Integer;

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Integer;->intValue()I

    move-result v57

    .line 1121
    .local v57, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1119
    add-int/lit8 v26, v26, 0x1

    goto :goto_13

    .line 1125
    .end local v57    # "uid":I
    :cond_2b
    if-eqz v18, :cond_40

    .line 1127
    new-instance v56, Ljava/util/ArrayList;

    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    .line 1128
    .local v56, "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    const/16 v26, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v60

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_30

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/util/HashMap;

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_15
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_2f

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1130
    .restart local v41    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1131
    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1132
    const-wide v60, 0x7fffffffffffffffL

    move-wide/from16 v0, v60

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1133
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_16
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_2e

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 1134
    .restart local v53    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v60, v0

    if-eqz v60, :cond_2d

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v60, v0

    and-int/lit8 v60, v60, 0x1

    if-eqz v60, :cond_2d

    .line 1137
    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1139
    :cond_2d
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v60, v0

    if-eqz v60, :cond_2c

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v60, v0

    if-eqz v60, :cond_2c

    .line 1141
    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1142
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v60, v0

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v62, v0

    move-object/from16 v0, v62

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v62, v0

    cmp-long v60, v60, v62

    if-lez v60, :cond_2c

    .line 1143
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v60, v0

    move-wide/from16 v0, v60

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 1147
    .end local v53    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    :cond_2e
    move-object/from16 v0, v56

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1128
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v41    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_2f
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_14

    .line 1151
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v60, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v60

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1153
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1154
    .local v34, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$BaseItem;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v35, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->clear()V

    .line 1156
    const/16 v26, 0x0

    :goto_17
    invoke-virtual/range {v56 .. v56}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_39

    .line 1157
    move-object/from16 v0, v56

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1158
    .restart local v41    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    const/16 v60, 0x0

    move/from16 v0, v60

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mNeedDivider:Z

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 1162
    .local v22, "firstProc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v34

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1164
    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    if-lez v60, :cond_31

    .line 1166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    :cond_31
    const/16 v29, 0x0

    .line 1171
    .local v29, "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    const/16 v23, 0x0

    .line 1172
    .local v23, "haveAllMerged":Z
    const/16 v31, 0x0

    .line 1173
    .local v31, "needDivider":Z
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_34

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 1174
    .restart local v53    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    move/from16 v0, v31

    move-object/from16 v1, v53

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mNeedDivider:Z

    .line 1175
    const/16 v31, 0x1

    .line 1176
    move-object/from16 v0, v34

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    if-eqz v60, :cond_33

    .line 1178
    if-eqz v29, :cond_32

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v60

    if-eq v0, v1, :cond_32

    .line 1179
    const/16 v23, 0x0

    .line 1181
    :cond_32
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v29, v0

    goto :goto_18

    .line 1183
    :cond_33
    const/16 v23, 0x0

    goto :goto_18

    .line 1187
    .end local v53    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    :cond_34
    if-eqz v23, :cond_35

    if-eqz v29, :cond_35

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v61, v0

    invoke-virtual/range {v61 .. v61}, Ljava/util/HashMap;->size()I

    move-result v61

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_37

    .line 1190
    :cond_35
    new-instance v29, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .end local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, v29

    move/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;-><init>(I)V

    .line 1191
    .restart local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v60

    invoke-interface/range {v60 .. v60}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_19
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v60

    if-eqz v60, :cond_36

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 1192
    .restart local v53    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    move-object/from16 v0, v29

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    goto :goto_19

    .line 1195
    .end local v53    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    :cond_36
    move-object/from16 v0, v41

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1196
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->clear()V

    .line 1197
    move/from16 v30, v22

    .local v30, "mpi":I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    add-int/lit8 v60, v60, -0x1

    move/from16 v0, v30

    move/from16 v1, v60

    if-ge v0, v1, :cond_37

    .line 1198
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    move-object/from16 v0, v61

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v61

    invoke-virtual/range {v60 .. v61}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    add-int/lit8 v30, v30, 0x1

    goto :goto_1a

    .line 1202
    .end local v30    # "mpi":I
    :cond_37
    const/16 v60, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1203
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_38

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v60

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ex/applications/RunningState$MergedItem;)V

    .line 1156
    :goto_1b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_17

    .line 1206
    :cond_38
    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 1212
    .end local v22    # "firstProc":I
    .end local v23    # "haveAllMerged":Z
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v31    # "needDivider":Z
    .end local v41    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1213
    const/16 v26, 0x0

    :goto_1c
    move/from16 v0, v26

    if-ge v0, v8, :cond_3d

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1215
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object/from16 v60, v0

    if-nez v60, :cond_3b

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/HashMap;->size()I

    move-result v60

    if-gtz v60, :cond_3b

    .line 1216
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    if-nez v60, :cond_3a

    .line 1217
    new-instance v60, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v61, v0

    invoke-direct/range {v60 .. v61}, Lcom/android/settings_ex/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1218
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1220
    :cond_3a
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    const/16 v61, 0x0

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    move/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1221
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_3c

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v60

    move-object/from16 v4, v61

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ex/applications/RunningState$MergedItem;)V

    .line 1227
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    :cond_3b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_1c

    .line 1225
    :cond_3c
    const/16 v60, 0x0

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v61, v0

    move-object/from16 v0, v35

    move/from16 v1, v60

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1d

    .line 1233
    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1234
    .local v12, "NU":I
    const/16 v26, 0x0

    :goto_1e
    move/from16 v0, v26

    if-ge v0, v12, :cond_3f

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1236
    .local v59, "user":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_3e

    .line 1237
    const/16 v60, 0x0

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1234
    :cond_3e
    add-int/lit8 v26, v26, 0x1

    goto :goto_1e

    .line 1241
    .end local v59    # "user":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v61, v0

    monitor-enter v61

    .line 1242
    :try_start_0
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1243
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1244
    monitor-exit v61
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    .end local v12    # "NU":I
    .end local v34    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$BaseItem;>;"
    .end local v35    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .end local v56    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->clear()V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v61, v0

    invoke-virtual/range {v60 .. v61}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1251
    const/16 v37, 0x0

    .line 1252
    .local v37, "numBackgroundProcesses":I
    const/16 v38, 0x0

    .line 1253
    .local v38, "numForegroundProcesses":I
    const/16 v40, 0x0

    .line 1254
    .local v40, "numServiceProcesses":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1255
    const/16 v26, 0x0

    :goto_1f
    move/from16 v0, v26

    if-ge v0, v10, :cond_44

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1257
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_43

    .line 1260
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0x190

    move/from16 v0, v60

    move/from16 v1, v61

    if-lt v0, v1, :cond_41

    .line 1262
    add-int/lit8 v37, v37, 0x1

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    :goto_20
    add-int/lit8 v26, v26, 0x1

    goto :goto_1f

    .line 1244
    .end local v37    # "numBackgroundProcesses":I
    .end local v38    # "numForegroundProcesses":I
    .end local v40    # "numServiceProcesses":I
    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .restart local v12    # "NU":I
    .restart local v34    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$BaseItem;>;"
    .restart local v35    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v56    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v60

    :try_start_1
    monitor-exit v61
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v60

    .line 1264
    .end local v12    # "NU":I
    .end local v34    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$BaseItem;>;"
    .end local v35    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .end local v56    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    .restart local v37    # "numBackgroundProcesses":I
    .restart local v38    # "numForegroundProcesses":I
    .restart local v40    # "numServiceProcesses":I
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_41
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0xc8

    move/from16 v0, v60

    move/from16 v1, v61

    if-gt v0, v1, :cond_42

    .line 1266
    add-int/lit8 v38, v38, 0x1

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1269
    :cond_42
    const-string v60, "RunningState"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "Unknown non-service process: "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const-string v62, " #"

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v62, v0

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1273
    :cond_43
    add-int/lit8 v40, v40, 0x1

    goto :goto_20

    .line 1277
    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_44
    const-wide/16 v14, 0x0

    .line 1278
    .local v14, "backgroundProcessMemory":J
    const-wide/16 v24, 0x0

    .line 1279
    .local v24, "foregroundProcessMemory":J
    const-wide/16 v50, 0x0

    .line 1280
    .local v50, "serviceProcessMemory":J
    const/16 v32, 0x0

    .line 1281
    .local v32, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    const/16 v36, 0x0

    .line 1282
    .local v36, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    const/16 v21, 0x0

    .line 1284
    .local v21, "diffUsers":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 1285
    .local v39, "numProc":I
    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v43, v0

    .line 1286
    .local v43, "pids":[I
    const/16 v26, 0x0

    :goto_21
    move/from16 v0, v26

    move/from16 v1, v39

    if-ge v0, v1, :cond_45

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object/from16 v0, v60

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v60, v0

    aput v60, v43, v26

    .line 1286
    add-int/lit8 v26, v26, 0x1

    goto :goto_21

    .line 1289
    :cond_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v60

    move-object/from16 v0, v60

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v49

    .line 1291
    .local v49, "pss":[J
    const/16 v16, 0x0

    .line 1292
    .local v16, "bgIndex":I
    const/16 v26, 0x0

    move-object/from16 v33, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .local v33, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_22
    :try_start_3
    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v60, v0

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_4f

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1294
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    aget-wide v60, v49, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v62, v0

    move-object/from16 v0, v46

    move-object/from16 v1, p1

    move-wide/from16 v2, v60

    move/from16 v4, v62

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v60

    or-int v18, v18, v60

    .line 1295
    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_46

    .line 1296
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v60, v0

    add-long v50, v50, v60

    move-object/from16 v32, v33

    .line 1292
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_23
    add-int/lit8 v26, v26, 0x1

    move-object/from16 v33, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto :goto_22

    .line 1297
    :cond_46
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0x190

    move/from16 v0, v60

    move/from16 v1, v61

    if-lt v0, v1, :cond_4e

    .line 1299
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v60, v0

    add-long v14, v14, v60

    .line 1301
    if-eqz v33, :cond_48

    .line 1302
    new-instance v29, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, v29

    move/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1303
    .restart local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1304
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_47

    const/16 v60, 0x1

    :goto_24
    or-int v21, v21, v60

    .line 1305
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v32, v33

    .line 1323
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_25
    const/16 v60, 0x1

    :try_start_4
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1324
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1325
    add-int/lit8 v16, v16, 0x1

    .line 1326
    goto :goto_23

    .line 1304
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_47
    const/16 v60, 0x0

    goto :goto_24

    .line 1307
    .end local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_48
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v16

    move/from16 v1, v60

    if-ge v0, v1, :cond_49

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v0, v60

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v46

    if-eq v0, v1, :cond_4d

    .line 1309
    :cond_49
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1310
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .local v17, "bgi":I
    :goto_26
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4b

    .line 1311
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1312
    .restart local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_4a

    const/16 v60, 0x1

    :goto_27
    or-int v21, v21, v60

    .line 1313
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1310
    add-int/lit8 v17, v17, 0x1

    goto :goto_26

    .line 1312
    :cond_4a
    const/16 v60, 0x0

    goto :goto_27

    .line 1315
    .end local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_4b
    new-instance v29, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v0, v46

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, v29

    move/from16 v1, v60

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v46

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1316
    .restart local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v60, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v60

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1317
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_4c

    const/16 v60, 0x1

    :goto_28
    or-int v21, v21, v60

    .line 1318
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_25

    .line 1331
    .end local v16    # "bgIndex":I
    .end local v17    # "bgi":I
    .end local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v39    # "numProc":I
    .end local v43    # "pids":[I
    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .end local v49    # "pss":[J
    :catch_0
    move-exception v60

    .line 1334
    :goto_29
    if-nez v32, :cond_51

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v60

    move/from16 v1, v37

    if-le v0, v1, :cond_51

    .line 1337
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1338
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .restart local v17    # "bgi":I
    :goto_2a
    move/from16 v0, v17

    move/from16 v1, v37

    if-ge v0, v1, :cond_51

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1340
    .restart local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_50

    const/16 v60, 0x1

    :goto_2b
    or-int v21, v21, v60

    .line 1341
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    add-int/lit8 v17, v17, 0x1

    goto :goto_2a

    .line 1317
    .restart local v16    # "bgIndex":I
    .restart local v39    # "numProc":I
    .restart local v43    # "pids":[I
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .restart local v49    # "pss":[J
    :cond_4c
    const/16 v60, 0x0

    goto :goto_28

    .line 1320
    .end local v17    # "bgi":I
    .end local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_4d
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .restart local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v32, v33

    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto/16 :goto_25

    .line 1326
    .end local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_4e
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v60, v0

    const/16 v61, 0xc8

    move/from16 v0, v60

    move/from16 v1, v61

    if-gt v0, v1, :cond_5a

    .line 1328
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v60, v0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    add-long v24, v24, v60

    move-object/from16 v32, v33

    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .end local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_4f
    move-object/from16 v32, v33

    .line 1332
    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .line 1340
    .end local v16    # "bgIndex":I
    .end local v39    # "numProc":I
    .end local v43    # "pids":[I
    .end local v49    # "pss":[J
    .restart local v17    # "bgi":I
    .restart local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_50
    const/16 v60, 0x0

    goto :goto_2b

    .line 1346
    .end local v17    # "bgi":I
    .end local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_51
    if-eqz v32, :cond_52

    .line 1349
    if-nez v21, :cond_53

    .line 1351
    move-object/from16 v36, v32

    .line 1379
    :cond_52
    const/16 v26, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/util/ArrayList;->size()I

    move-result v60

    move/from16 v0, v26

    move/from16 v1, v60

    if-ge v0, v1, :cond_57

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1379
    add-int/lit8 v26, v26, 0x1

    goto :goto_2c

    .line 1355
    :cond_53
    new-instance v36, Ljava/util/ArrayList;

    .end local v36    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1356
    .restart local v36    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1357
    .local v7, "NB":I
    const/16 v26, 0x0

    :goto_2d
    move/from16 v0, v26

    if-ge v0, v7, :cond_55

    .line 1358
    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1359
    .restart local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-eq v0, v1, :cond_54

    .line 1360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    move-object/from16 v3, v60

    move-object/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ex/applications/RunningState$MergedItem;)V

    .line 1357
    :goto_2e
    add-int/lit8 v26, v26, 0x1

    goto :goto_2d

    .line 1363
    :cond_54
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1368
    .end local v29    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1369
    .restart local v12    # "NU":I
    const/16 v26, 0x0

    :goto_2f
    move/from16 v0, v26

    if-ge v0, v12, :cond_52

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v60, v0

    move-object/from16 v0, v60

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1371
    .restart local v59    # "user":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v59

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v60, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v61, v0

    move/from16 v0, v60

    move/from16 v1, v61

    if-ne v0, v1, :cond_56

    .line 1372
    const/16 v60, 0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p1

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1373
    move-object/from16 v0, v59

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1369
    :cond_56
    add-int/lit8 v26, v26, 0x1

    goto :goto_2f

    .line 1383
    .end local v7    # "NB":I
    .end local v12    # "NU":I
    .end local v59    # "user":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v61, v0

    monitor-enter v61

    .line 1384
    :try_start_8
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1385
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState;->mNumForegroundProcesses:I

    .line 1386
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState;->mNumServiceProcesses:I

    .line 1387
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1388
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/applications/RunningState;->mForegroundProcessMemory:J

    .line 1389
    move-wide/from16 v0, v50

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessMemory:J

    .line 1390
    if-eqz v32, :cond_58

    .line 1391
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1392
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1393
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v60, v0

    if-eqz v60, :cond_58

    .line 1394
    const/16 v18, 0x1

    .line 1397
    :cond_58
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/RunningState;->mHaveData:Z

    move/from16 v60, v0

    if-nez v60, :cond_59

    .line 1398
    const/16 v60, 0x1

    move/from16 v0, v60

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState;->mHaveData:Z

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v60, v0

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Object;->notifyAll()V

    .line 1401
    :cond_59
    monitor-exit v61

    .line 1403
    return v18

    .line 1401
    :catchall_1
    move-exception v60

    monitor-exit v61
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v60

    .line 1331
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v16    # "bgIndex":I
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v39    # "numProc":I
    .restart local v43    # "pids":[I
    .restart local v49    # "pss":[J
    :catch_1
    move-exception v60

    move-object/from16 v32, v33

    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v46    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_5a
    move-object/from16 v32, v33

    .end local v33    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1425
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1426
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1407
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1408
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1409
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1419
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1420
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v1

    return-object v0

    .line 1421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 782
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 783
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningState;->mHaveData:Z

    monitor-exit v1

    return v0

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method pause()V
    .locals 3

    .prologue
    .line 799
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 800
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningState;->mResumed:Z

    .line 801
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mRefreshUiListener:Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;

    .line 802
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 803
    monitor-exit v1

    .line 804
    return-void

    .line 803
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resume(Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;

    .prologue
    .line 756
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 757
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningState;->mResumed:Z

    .line 758
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningState;->mRefreshUiListener:Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;

    .line 761
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings_ex/applications/InterestingConfigChanges;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningState;->mHaveData:Z

    .line 763
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 764
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 765
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 771
    monitor-exit v1

    .line 772
    return-void

    .line 771
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .param p1, "watching"    # Z

    .prologue
    .line 1413
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1414
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1415
    monitor-exit v1

    .line 1416
    return-void

    .line 1415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 775
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 776
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 777
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 778
    monitor-exit v1

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method waitForData()V
    .locals 4

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 789
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings_ex/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 791
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 792
    :catch_0
    move-exception v0

    goto :goto_0

    .line 795
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 796
    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
