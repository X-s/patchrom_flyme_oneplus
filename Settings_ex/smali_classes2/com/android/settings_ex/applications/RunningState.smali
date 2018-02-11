.class public Lcom/android/settings_ex/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/applications/RunningState$1;,
        Lcom/android/settings_ex/applications/RunningState$2;,
        Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;,
        Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings_ex/applications/RunningState$BaseItem;,
        Lcom/android/settings_ex/applications/RunningState$MergedItem;,
        Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings_ex/applications/RunningState$ProcessItem;,
        Lcom/android/settings_ex/applications/RunningState$ServiceItem;,
        Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings_ex/applications/RunningState$UserManagerBroadcastReceiver;,
        Lcom/android/settings_ex/applications/RunningState$UserState;
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

.field final mInterestingConfigChanges:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

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

.field private final mUmBroadcastReceiver:Lcom/android/settings_ex/applications/RunningState$UserManagerBroadcastReceiver;

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

.field mWatchingBackgroundItems:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/settings_ex/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/applications/RunningState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/applications/RunningState;->reset()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings_ex/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v1, Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    invoke-direct {v1}, Lcom/android/settings_exlib/applications/InterestingConfigChanges;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    .line 95
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 94
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 100
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 99
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 104
    new-instance v1, Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings_ex/applications/RunningState;)V

    .line 103
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 112
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 111
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 122
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 126
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 139
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 141
    iput v3, p0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    .line 144
    new-instance v1, Lcom/android/settings_ex/applications/RunningState$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/RunningState$1;-><init>(Lcom/android/settings_ex/applications/RunningState;)V

    .line 143
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 204
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 255
    new-instance v1, Lcom/android/settings_ex/applications/RunningState$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/RunningState$2;-><init>(Lcom/android/settings_ex/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 321
    new-instance v1, Lcom/android/settings_ex/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/settings_ex/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/settings_ex/applications/RunningState;Lcom/android/settings_ex/applications/RunningState$UserManagerBroadcastReceiver;)V

    .line 320
    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings_ex/applications/RunningState$UserManagerBroadcastReceiver;

    .line 779
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 780
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v4, "activity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 781
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 782
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 783
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    .line 784
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 785
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings_ex/applications/RunningState;->mHideManagedProfiles:Z

    .line 786
    iput-boolean v3, p0, Lcom/android/settings_ex/applications/RunningState;->mResumed:Z

    .line 787
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "RunningState:Background"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 788
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 789
    new-instance v1, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings_ex/applications/RunningState;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    .line 790
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings_ex/applications/RunningState$UserManagerBroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/RunningState$UserManagerBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 778
    return-void

    :cond_0
    move v1, v2

    .line 785
    goto :goto_0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ex/applications/RunningState$MergedItem;)V
    .locals 5
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
    .local p2, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .local p3, "userItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    const/4 v0, 0x1

    .line 870
    iget v3, p4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 871
    .local v2, "userItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    if-eqz v2, :cond_0

    iget v3, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mCurSeq:I

    iget v4, p0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    if-eq v3, v4, :cond_1

    .line 872
    .local v0, "first":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 873
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v4, p4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 874
    .local v1, "info":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_2

    .line 876
    return-void

    .line 871
    .end local v0    # "first":Z
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 878
    .restart local v0    # "first":Z
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings_ex/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 879
    return-void

    .line 881
    :cond_3
    if-nez v2, :cond_5

    .line 882
    new-instance v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .end local v2    # "userItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget v3, p4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v2, v3}, Lcom/android/settings_ex/applications/RunningState$MergedItem;-><init>(I)V

    .line 883
    .restart local v2    # "userItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    iget v3, p4, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 887
    :goto_1
    iget v3, p0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    iput v3, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mCurSeq:I

    .line 888
    new-instance v3, Lcom/android/settings_ex/applications/RunningState$UserState;

    invoke-direct {v3}, Lcom/android/settings_ex/applications/RunningState$UserState;-><init>()V

    iput-object v3, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    .line 889
    iget-object v3, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    iput-object v1, v3, Lcom/android/settings_ex/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 890
    iget-object v3, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v4, v1}, Lcom/android/settings_exlib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings_ex/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 891
    iget-object v3, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUser:Lcom/android/settings_ex/applications/RunningState$UserState;

    invoke-static {p1, v1}, Lcom/android/settings_exlib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings_ex/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 892
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    .end local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_4
    iget-object v3, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    return-void

    .line 885
    .restart local v1    # "info":Landroid/content/pm/UserInfo;
    :cond_5
    iget-object v3, v2, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings_ex/applications/RunningState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 770
    sget-object v1, Lcom/android/settings_ex/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v1

    .line 771
    :try_start_0
    sget-object v0, Lcom/android/settings_ex/applications/RunningState;->sInstance:Lcom/android/settings_ex/applications/RunningState;

    if-nez v0, :cond_0

    .line 772
    new-instance v0, Lcom/android/settings_ex/applications/RunningState;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings_ex/applications/RunningState;->sInstance:Lcom/android/settings_ex/applications/RunningState;

    .line 774
    :cond_0
    sget-object v0, Lcom/android/settings_ex/applications/RunningState;->sInstance:Lcom/android/settings_ex/applications/RunningState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 4
    .param p1, "pi"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 846
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 847
    return v3

    .line 849
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 850
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 851
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0xaa

    if-ge v0, v1, :cond_1

    .line 852
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v0, :cond_1

    .line 854
    return v3

    .line 856
    :cond_1
    return v2
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .line 753
    if-eqz p2, :cond_1

    iget v3, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_0

    .line 754
    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 755
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 756
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 757
    return-object v0

    .line 761
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    move-object v1, p1

    .line 762
    .local v1, "label":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 763
    .local v2, "tail":I
    if-ltz v2, :cond_2

    .line 764
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 766
    :cond_2
    return-object v1
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 861
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 862
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 863
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 864
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 865
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 859
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 68
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    .prologue
    .line 898
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v46

    .line 900
    .local v46, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    add-int/lit8 v63, v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    .line 902
    const/16 v18, 0x0

    .line 907
    .local v18, "changed":Z
    const/16 v63, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v51

    .line 908
    .local v51, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v51, :cond_1

    invoke-interface/range {v51 .. v51}, Ljava/util/List;->size()I

    move-result v11

    .line 909
    .local v11, "NS":I
    :goto_0
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_1
    move/from16 v0, v27

    if-ge v0, v11, :cond_3

    .line 910
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 914
    .local v54, "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    move/from16 v63, v0

    if-nez v63, :cond_2

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v63, v0

    if-nez v63, :cond_2

    .line 915
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 916
    add-int/lit8 v27, v27, -0x1

    .line 917
    add-int/lit8 v11, v11, -0x1

    .line 909
    :cond_0
    :goto_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 908
    .end local v11    # "NS":I
    .end local v27    # "i":I
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "NS":I
    goto :goto_0

    .line 922
    .restart local v27    # "i":I
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0x8

    if-eqz v63, :cond_0

    .line 924
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 925
    add-int/lit8 v27, v27, -0x1

    .line 926
    add-int/lit8 v11, v11, -0x1

    .line 927
    goto :goto_2

    .line 934
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v48

    .line 935
    .local v48, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v48, :cond_4

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v9

    .line 936
    .local v9, "NP":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 937
    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    if-ge v0, v9, :cond_5

    .line 938
    move-object/from16 v0, v48

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 939
    .local v40, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    new-instance v65, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;

    move-object/from16 v0, v65

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual/range {v63 .. v65}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 937
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 935
    .end local v9    # "NP":I
    .end local v40    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "NP":I
    goto :goto_3

    .line 944
    :cond_5
    const/16 v27, 0x0

    :goto_5
    move/from16 v0, v27

    if-ge v0, v11, :cond_7

    .line 945
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 946
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_6

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v63, v0

    if-lez v63, :cond_6

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;

    .line 948
    .local v13, "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_6

    .line 949
    const/16 v63, 0x1

    move/from16 v0, v63

    iput-boolean v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 950
    move-object/from16 v0, v54

    iget-boolean v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    move/from16 v63, v0

    if-eqz v63, :cond_6

    .line 951
    const/16 v63, 0x1

    move/from16 v0, v63

    iput-boolean v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 944
    .end local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    :cond_6
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 958
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_7
    const/16 v27, 0x0

    .end local v18    # "changed":Z
    :goto_6
    move/from16 v0, v27

    if-ge v0, v11, :cond_14

    .line 959
    move-object/from16 v0, v51

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 966
    .restart local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_8

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v63, v0

    if-lez v63, :cond_8

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;

    .line 968
    .restart local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    if-eqz v13, :cond_8

    iget-boolean v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    move/from16 v63, v0

    if-eqz v63, :cond_f

    .line 994
    .end local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    .line 995
    .local v49, "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    if-nez v49, :cond_9

    .line 996
    new-instance v49, Ljava/util/HashMap;

    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    .line 997
    .restart local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 999
    :cond_9
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1000
    .local v47, "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    if-nez v47, :cond_a

    .line 1001
    const/16 v18, 0x1

    .line 1002
    .restart local v18    # "changed":Z
    new-instance v47, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    move/from16 v63, v0

    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v63

    move-object/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1003
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v54

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object/from16 v63, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v63

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    .end local v18    # "changed":Z
    :cond_a
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_e

    .line 1007
    move-object/from16 v0, v54

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    move-wide/from16 v64, v0

    const-wide/16 v66, 0x0

    cmp-long v63, v64, v66

    if-nez v63, :cond_13

    move-object/from16 v0, v54

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    move/from16 v43, v0

    .line 1008
    .local v43, "pid":I
    :goto_7
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    move/from16 v0, v43

    move/from16 v1, v63

    if-eq v0, v1, :cond_d

    .line 1009
    const/16 v18, 0x1

    .line 1010
    .restart local v18    # "changed":Z
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    move/from16 v0, v63

    move/from16 v1, v43

    if-eq v0, v1, :cond_d

    .line 1011
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-eqz v63, :cond_b

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    .line 1014
    :cond_b
    if-eqz v43, :cond_c

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v43

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1017
    :cond_c
    move/from16 v0, v43

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    .line 1020
    .end local v18    # "changed":Z
    :cond_d
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 1021
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1023
    .end local v43    # "pid":I
    :cond_e
    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v63

    or-int v18, v18, v63

    .line 958
    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    :goto_8
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_6

    .line 974
    .restart local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    :cond_f
    iget-object v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 975
    const/16 v64, 0x12c

    .line 974
    move/from16 v0, v63

    move/from16 v1, v64

    if-ge v0, v1, :cond_8

    .line 978
    const/16 v58, 0x0

    .line 979
    .local v58, "skip":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    iget-object v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;

    .line 980
    .restart local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    :goto_9
    if-eqz v13, :cond_11

    .line 981
    iget-boolean v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->hasServices:Z

    move/from16 v63, v0

    if-nez v63, :cond_10

    iget-object v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v63

    if-eqz v63, :cond_12

    .line 982
    :cond_10
    const/16 v58, 0x1

    .line 987
    :cond_11
    if-eqz v58, :cond_8

    goto :goto_8

    .line 985
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    iget-object v0, v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    check-cast v13, Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;

    .restart local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    goto :goto_9

    .line 1007
    .end local v13    # "ainfo":Lcom/android/settings_ex/applications/RunningState$AppProcessInfo;
    .end local v58    # "skip":Z
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .restart local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    :cond_13
    const/16 v43, 0x0

    .restart local v43    # "pid":I
    goto/16 :goto_7

    .line 1028
    .end local v43    # "pid":I
    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    .end local v54    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_14
    const/16 v27, 0x0

    :goto_a
    move/from16 v0, v27

    if-ge v0, v9, :cond_19

    .line 1029
    move-object/from16 v0, v48

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1030
    .restart local v40    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1031
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    if-nez v47, :cond_16

    .line 1035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    check-cast v47, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1036
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    if-nez v47, :cond_15

    .line 1037
    const/16 v18, 0x1

    .line 1038
    .restart local v18    # "changed":Z
    new-instance v47, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move/from16 v63, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v64, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move/from16 v2, v63

    move-object/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1039
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1042
    .end local v18    # "changed":Z
    :cond_15
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 1045
    :cond_16
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v63

    if-eqz v63, :cond_18

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_17

    .line 1047
    const/16 v18, 0x1

    .line 1048
    .restart local v18    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    .end local v18    # "changed":Z
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1051
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1052
    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1057
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1058
    move-object/from16 v0, v40

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1028
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    .line 1054
    :cond_18
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mInteresting:Z

    goto :goto_b

    .line 1063
    .end local v40    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1064
    .local v10, "NRP":I
    const/16 v27, 0x0

    :goto_c
    move/from16 v0, v27

    if-ge v0, v10, :cond_1e

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1066
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_1d

    .line 1067
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    move/from16 v20, v0

    .line 1068
    .local v20, "clientPid":I
    if-eqz v20, :cond_1c

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1070
    .local v19, "client":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    if-nez v19, :cond_1a

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "client":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    check-cast v19, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1073
    .restart local v19    # "client":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_1a
    if-eqz v19, :cond_1b

    .line 1074
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1082
    .end local v19    # "client":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_1b
    :goto_d
    add-int/lit8 v27, v27, 0x1

    goto :goto_c

    .line 1080
    :cond_1c
    const/16 v63, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    goto :goto_d

    .line 1084
    .end local v20    # "clientPid":I
    :cond_1d
    const/16 v18, 0x1

    .line 1085
    .restart local v18    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    .line 1086
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_c

    .line 1091
    .end local v18    # "changed":Z
    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1092
    .local v8, "NHP":I
    const/16 v27, 0x0

    :goto_e
    move/from16 v0, v27

    if-ge v0, v8, :cond_21

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1094
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mInteresting:Z

    move/from16 v63, v0

    if-eqz v63, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v63

    if-nez v63, :cond_20

    .line 1095
    :cond_1f
    const/16 v18, 0x1

    .line 1096
    .restart local v18    # "changed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1097
    add-int/lit8 v27, v27, -0x1

    .line 1098
    add-int/lit8 v8, v8, -0x1

    .line 1092
    .end local v18    # "changed":Z
    :cond_20
    add-int/lit8 v27, v27, 0x1

    goto :goto_e

    .line 1105
    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 1106
    .local v6, "NAP":I
    const/16 v27, 0x0

    :goto_f
    move/from16 v0, v27

    if-ge v0, v6, :cond_23

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1108
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_22

    .line 1109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, v46

    move/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v63

    or-int v18, v18, v63

    .line 1106
    :cond_22
    add-int/lit8 v27, v27, 0x1

    goto :goto_f

    .line 1114
    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_23
    const/16 v61, 0x0

    .line 1115
    .local v61, "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    .end local v61    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_2b

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/HashMap;

    .line 1117
    .restart local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .line 1118
    .local v45, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    :cond_24
    :goto_11
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_2a

    .line 1119
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1120
    .local v41, "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_27

    .line 1121
    move-object/from16 v0, v41

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1122
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-nez v63, :cond_25

    .line 1125
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->clear()V

    .line 1141
    :cond_25
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v57

    .line 1142
    .local v57, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningState$ServiceItem;>;"
    :cond_26
    :goto_12
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_24

    .line 1143
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 1144
    .local v55, "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_26

    .line 1145
    const/16 v18, 0x1

    .line 1146
    .restart local v18    # "changed":Z
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 1128
    .end local v18    # "changed":Z
    .end local v55    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    .end local v57    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningState$ServiceItem;>;"
    :cond_27
    const/16 v18, 0x1

    .line 1129
    .restart local v18    # "changed":Z
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->remove()V

    .line 1130
    invoke-virtual/range {v49 .. v49}, Ljava/util/HashMap;->size()I

    move-result v63

    if-nez v63, :cond_29

    .line 1131
    if-nez v61, :cond_28

    .line 1132
    new-instance v61, Ljava/util/ArrayList;

    invoke-direct/range {v61 .. v61}, Ljava/util/ArrayList;-><init>()V

    .line 1134
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v63

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v61

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1136
    :cond_29
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-eqz v63, :cond_24

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/util/SparseArray;->remove(I)V

    goto/16 :goto_11

    .line 1115
    .end local v18    # "changed":Z
    .end local v41    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_2a
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_10

    .line 1152
    .end local v45    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    .end local v49    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    :cond_2b
    if-eqz v61, :cond_2c

    .line 1153
    const/16 v27, 0x0

    :goto_13
    invoke-virtual/range {v61 .. v61}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_2c

    .line 1154
    move-object/from16 v0, v61

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/lang/Integer;

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Integer;->intValue()I

    move-result v60

    .line 1155
    .local v60, "uid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1153
    add-int/lit8 v27, v27, 0x1

    goto :goto_13

    .line 1159
    .end local v60    # "uid":I
    :cond_2c
    if-eqz v18, :cond_42

    .line 1161
    new-instance v59, Ljava/util/ArrayList;

    invoke-direct/range {v59 .. v59}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    .local v59, "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    const/16 v27, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_31

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Ljava/util/HashMap;

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .local v42, "pi$iterator":Ljava/util/Iterator;
    :goto_15
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_30

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1164
    .restart local v41    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1165
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1166
    const-wide v64, 0x7fffffffffffffffL

    move-wide/from16 v0, v64

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1167
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    .local v56, "si$iterator":Ljava/util/Iterator;
    :cond_2d
    :goto_16
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_2f

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 1168
    .restart local v55    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2e

    .line 1169
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v63, v0

    and-int/lit8 v63, v63, 0x1

    if-eqz v63, :cond_2e

    .line 1171
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1173
    :cond_2e
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    if-eqz v63, :cond_2d

    .line 1174
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    move/from16 v63, v0

    if-eqz v63, :cond_2d

    .line 1175
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1176
    move-object/from16 v0, v41

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mActiveSince:J

    move-wide/from16 v64, v0

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v66, v0

    cmp-long v63, v64, v66

    if-lez v63, :cond_2d

    .line 1177
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget-wide v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    move-wide/from16 v64, v0

    move-wide/from16 v0, v64

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_16

    .line 1181
    .end local v55    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    :cond_2f
    move-object/from16 v0, v59

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 1162
    .end local v41    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .end local v56    # "si$iterator":Ljava/util/Iterator;
    :cond_30
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_14

    .line 1185
    .end local v42    # "pi$iterator":Ljava/util/Iterator;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;

    move-object/from16 v63, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1187
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    .local v33, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$BaseItem;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    .local v34, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1190
    const/16 v27, 0x0

    :goto_17
    invoke-virtual/range {v59 .. v59}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_3b

    .line 1191
    move-object/from16 v0, v59

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1192
    .restart local v41    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    const/16 v63, 0x0

    move/from16 v0, v63

    move-object/from16 v1, v41

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mNeedDivider:Z

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1196
    .local v23, "firstProc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1198
    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    if-lez v63, :cond_32

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    :cond_32
    const/16 v28, 0x0

    .line 1205
    .local v28, "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    const/16 v26, 0x0

    .line 1206
    .local v26, "haveAllMerged":Z
    const/16 v30, 0x0

    .line 1207
    .local v30, "needDivider":Z
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    .end local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .restart local v56    # "si$iterator":Ljava/util/Iterator;
    :goto_18
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_35

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 1208
    .restart local v55    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    move/from16 v0, v30

    move-object/from16 v1, v55

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mNeedDivider:Z

    .line 1209
    const/16 v30, 0x1

    .line 1210
    move-object/from16 v0, v33

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    if-eqz v63, :cond_34

    .line 1212
    if-eqz v28, :cond_33

    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v63

    if-eq v0, v1, :cond_33

    .line 1213
    const/16 v26, 0x0

    .line 1215
    :cond_33
    move-object/from16 v0, v55

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v28, v0

    .local v28, "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    goto :goto_18

    .line 1217
    .end local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_34
    const/16 v26, 0x0

    goto :goto_18

    .line 1221
    .end local v55    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    :cond_35
    if-eqz v26, :cond_36

    if-nez v28, :cond_37

    .line 1224
    :cond_36
    new-instance v28, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v0, v41

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;-><init>(I)V

    .line 1225
    .restart local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :goto_19
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_39

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lcom/android/settings_ex/applications/RunningState$ServiceItem;

    .line 1226
    .restart local v55    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    move-object/from16 v0, v28

    move-object/from16 v1, v55

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    goto :goto_19

    .line 1222
    .end local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v55    # "si":Lcom/android/settings_ex/applications/RunningState$ServiceItem;
    :cond_37
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Ljava/util/HashMap;->size()I

    move-result v64

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_36

    .line 1236
    :cond_38
    const/16 v63, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1237
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_3a

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v63

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ex/applications/RunningState$MergedItem;)V

    .line 1190
    :goto_1a
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_17

    .line 1229
    .restart local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_39
    move-object/from16 v0, v41

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1230
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1231
    move/from16 v29, v23

    .local v29, "mpi":I
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    add-int/lit8 v63, v63, -0x1

    move/from16 v0, v29

    move/from16 v1, v63

    if-ge v0, v1, :cond_38

    .line 1232
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    add-int/lit8 v29, v29, 0x1

    goto :goto_1b

    .line 1240
    .end local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v29    # "mpi":I
    :cond_3a
    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 1246
    .end local v23    # "firstProc":I
    .end local v26    # "haveAllMerged":Z
    .end local v30    # "needDivider":Z
    .end local v41    # "pi":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .end local v56    # "si$iterator":Ljava/util/Iterator;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1247
    const/16 v27, 0x0

    :goto_1c
    move/from16 v0, v27

    if-ge v0, v8, :cond_3f

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1249
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object/from16 v63, v0

    if-nez v63, :cond_3d

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->size()I

    move-result v63

    if-gtz v63, :cond_3d

    .line 1250
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    if-nez v63, :cond_3c

    .line 1251
    new-instance v63, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v64, v0

    invoke-direct/range {v63 .. v64}, Lcom/android/settings_ex/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1252
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1254
    :cond_3c
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1255
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_3e

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    .line 1257
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v64, v0

    .line 1256
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v34

    move-object/from16 v3, v63

    move-object/from16 v4, v64

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ex/applications/RunningState$MergedItem;)V

    .line 1261
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    :cond_3d
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1c

    .line 1259
    :cond_3e
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    const/16 v64, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v64

    move-object/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1d

    .line 1267
    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1268
    .local v12, "NU":I
    const/16 v27, 0x0

    :goto_1e
    move/from16 v0, v27

    if-ge v0, v12, :cond_41

    .line 1269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1270
    .local v62, "user":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v62

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_40

    .line 1271
    const/16 v63, 0x0

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1268
    :cond_40
    add-int/lit8 v27, v27, 0x1

    goto :goto_1e

    .line 1275
    .end local v62    # "user":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v64, v0

    monitor-enter v64

    .line 1276
    :try_start_0
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1277
    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v64

    .line 1283
    .end local v12    # "NU":I
    .end local v33    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$BaseItem;>;"
    .end local v34    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .end local v59    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    move-object/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1285
    const/16 v36, 0x0

    .line 1286
    .local v36, "numBackgroundProcesses":I
    const/16 v37, 0x0

    .line 1287
    .local v37, "numForegroundProcesses":I
    const/16 v39, 0x0

    .line 1288
    .local v39, "numServiceProcesses":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 1289
    const/16 v27, 0x0

    :goto_1f
    move/from16 v0, v27

    if-ge v0, v10, :cond_46

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1291
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_45

    .line 1294
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1295
    const/16 v64, 0x190

    .line 1294
    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_43

    .line 1296
    add-int/lit8 v36, v36, 0x1

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1289
    :goto_20
    add-int/lit8 v27, v27, 0x1

    goto :goto_1f

    .line 1275
    .end local v36    # "numBackgroundProcesses":I
    .end local v37    # "numForegroundProcesses":I
    .end local v39    # "numServiceProcesses":I
    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .restart local v12    # "NU":I
    .restart local v33    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$BaseItem;>;"
    .restart local v34    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v59    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    :catchall_0
    move-exception v63

    monitor-exit v64

    throw v63

    .line 1298
    .end local v12    # "NU":I
    .end local v33    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$BaseItem;>;"
    .end local v34    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .end local v59    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$ProcessItem;>;"
    .restart local v36    # "numBackgroundProcesses":I
    .restart local v37    # "numForegroundProcesses":I
    .restart local v39    # "numServiceProcesses":I
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_43
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1299
    const/16 v64, 0xc8

    .line 1298
    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_44

    .line 1300
    add-int/lit8 v37, v37, 0x1

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 1303
    :cond_44
    const-string/jumbo v63, "RunningState"

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Unknown non-service process: "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 1304
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    move-object/from16 v65, v0

    .line 1303
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 1304
    const-string/jumbo v65, " #"

    .line 1303
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    .line 1304
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v65, v0

    .line 1303
    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 1307
    :cond_45
    add-int/lit8 v39, v39, 0x1

    goto :goto_20

    .line 1311
    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_46
    const-wide/16 v14, 0x0

    .line 1312
    .local v14, "backgroundProcessMemory":J
    const-wide/16 v24, 0x0

    .line 1313
    .local v24, "foregroundProcessMemory":J
    const-wide/16 v52, 0x0

    .line 1314
    .local v52, "serviceProcessMemory":J
    const/16 v31, 0x0

    .line 1315
    .local v31, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    const/16 v35, 0x0

    .line 1316
    .local v35, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    const/16 v21, 0x0

    .line 1318
    .local v21, "diffUsers":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v38

    .line 1319
    .local v38, "numProc":I
    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v44, v0

    .line 1320
    .local v44, "pids":[I
    const/16 v27, 0x0

    :goto_21
    move/from16 v0, v27

    move/from16 v1, v38

    if-ge v0, v1, :cond_47

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object/from16 v0, v63

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mPid:I

    move/from16 v63, v0

    aput v63, v44, v27

    .line 1320
    add-int/lit8 v27, v27, 0x1

    goto :goto_21

    .line 1323
    :cond_47
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v50

    .line 1325
    .local v50, "pss":[J
    const/16 v16, 0x0

    .line 1326
    .local v16, "bgIndex":I
    const/16 v27, 0x0

    move-object/from16 v32, v31

    .end local v21    # "diffUsers":Z
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .local v32, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_22
    :try_start_2
    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v63, v0

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_51

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1328
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    aget-wide v64, v50, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-wide/from16 v2, v64

    move/from16 v4, v63

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v63

    or-int v18, v18, v63

    .line 1329
    .local v18, "changed":Z
    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_48

    .line 1330
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0

    add-long v52, v52, v64

    move-object/from16 v31, v32

    .line 1326
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .local v31, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_23
    add-int/lit8 v27, v27, 0x1

    move-object/from16 v32, v31

    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto :goto_22

    .line 1331
    :cond_48
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1332
    const/16 v64, 0x190

    .line 1331
    move/from16 v0, v63

    move/from16 v1, v64

    if-lt v0, v1, :cond_50

    .line 1333
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0

    add-long v14, v14, v64

    .line 1335
    if-eqz v32, :cond_4a

    .line 1336
    new-instance v28, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1337
    .restart local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1338
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_49

    const/16 v63, 0x1

    :goto_24
    or-int v21, v21, v63

    .line 1339
    .local v21, "diffUsers":Z
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v31, v32

    .line 1357
    .end local v21    # "diffUsers":Z
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :goto_25
    const/16 v63, 0x1

    :try_start_3
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1358
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1359
    add-int/lit8 v16, v16, 0x1

    goto :goto_23

    .line 1338
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_49
    const/16 v63, 0x0

    goto :goto_24

    .line 1341
    .end local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_4a
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v16

    move/from16 v1, v63

    if-ge v0, v1, :cond_4b

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v0, v63

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v47

    if-eq v0, v1, :cond_4f

    .line 1343
    :cond_4b
    new-instance v31, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1344
    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .local v17, "bgi":I
    :goto_26
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4d

    .line 1345
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1346
    .restart local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4c

    const/16 v63, 0x1

    :goto_27
    or-int v21, v21, v63

    .line 1347
    .restart local v21    # "diffUsers":Z
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1344
    add-int/lit8 v17, v17, 0x1

    goto :goto_26

    .line 1346
    .end local v21    # "diffUsers":Z
    :cond_4c
    const/16 v63, 0x0

    goto :goto_27

    .line 1349
    .end local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_4d
    new-instance v28, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, v28

    move/from16 v1, v63

    invoke-direct {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1350
    .restart local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v63, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v63

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .line 1351
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_4e

    const/16 v63, 0x1

    :goto_28
    or-int v21, v21, v63

    .line 1352
    .restart local v21    # "diffUsers":Z
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_25

    .line 1365
    .end local v16    # "bgIndex":I
    .end local v17    # "bgi":I
    .end local v18    # "changed":Z
    .end local v21    # "diffUsers":Z
    .end local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .end local v38    # "numProc":I
    .end local v44    # "pids":[I
    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .end local v50    # "pss":[J
    :catch_0
    move-exception v22

    .line 1368
    :goto_29
    if-nez v31, :cond_53

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v63

    move/from16 v1, v36

    if-le v0, v1, :cond_53

    .line 1371
    new-instance v31, Ljava/util/ArrayList;

    move-object/from16 v0, v31

    move/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1372
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .restart local v17    # "bgi":I
    :goto_2a
    move/from16 v0, v17

    move/from16 v1, v36

    if-ge v0, v1, :cond_53

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1374
    .restart local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_52

    const/16 v63, 0x1

    :goto_2b
    or-int v21, v21, v63

    .line 1375
    .restart local v21    # "diffUsers":Z
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    add-int/lit8 v17, v17, 0x1

    goto :goto_2a

    .line 1351
    .end local v21    # "diffUsers":Z
    .restart local v16    # "bgIndex":I
    .restart local v18    # "changed":Z
    .restart local v38    # "numProc":I
    .restart local v44    # "pids":[I
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .restart local v50    # "pss":[J
    :cond_4e
    const/16 v63, 0x0

    goto :goto_28

    .line 1354
    .end local v17    # "bgi":I
    .end local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_4f
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .restart local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto/16 :goto_25

    .line 1360
    .end local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_50
    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    move/from16 v63, v0

    .line 1361
    const/16 v64, 0xc8

    .line 1360
    move/from16 v0, v63

    move/from16 v1, v64

    if-gt v0, v1, :cond_5c

    .line 1362
    move-object/from16 v0, v47

    iget-wide v0, v0, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mSize:J

    move-wide/from16 v64, v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    add-long v24, v24, v64

    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto/16 :goto_23

    .end local v18    # "changed":Z
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .end local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_51
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .line 1374
    .end local v16    # "bgIndex":I
    .end local v38    # "numProc":I
    .end local v44    # "pids":[I
    .end local v50    # "pss":[J
    .restart local v17    # "bgi":I
    .restart local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_52
    const/16 v63, 0x0

    goto :goto_2b

    .line 1380
    .end local v17    # "bgi":I
    .end local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_53
    if-eqz v31, :cond_54

    .line 1383
    if-nez v21, :cond_55

    .line 1385
    move-object/from16 v35, v31

    .line 1413
    .end local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_54
    const/16 v27, 0x0

    :goto_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v63

    move/from16 v0, v27

    move/from16 v1, v63

    if-ge v0, v1, :cond_59

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1413
    add-int/lit8 v27, v27, 0x1

    goto :goto_2c

    .line 1389
    .restart local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    :cond_55
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1390
    .local v35, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1391
    .local v7, "NB":I
    const/16 v27, 0x0

    :goto_2d
    move/from16 v0, v27

    if-ge v0, v7, :cond_57

    .line 1392
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1393
    .restart local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-eq v0, v1, :cond_56

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    .line 1394
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v35

    move-object/from16 v3, v63

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings_ex/applications/RunningState$MergedItem;)V

    .line 1391
    :goto_2e
    add-int/lit8 v27, v27, 0x1

    goto :goto_2d

    .line 1397
    :cond_56
    move-object/from16 v0, v35

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1402
    .end local v28    # "mergedItem":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1403
    .restart local v12    # "NU":I
    const/16 v27, 0x0

    :goto_2f
    move/from16 v0, v27

    if-ge v0, v12, :cond_54

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/settings_ex/applications/RunningState$MergedItem;

    .line 1405
    .restart local v62    # "user":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    move-object/from16 v0, v62

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState$MergedItem;->mCurSeq:I

    move/from16 v63, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/applications/RunningState;->mSequence:I

    move/from16 v64, v0

    move/from16 v0, v63

    move/from16 v1, v64

    if-ne v0, v1, :cond_58

    .line 1406
    const/16 v63, 0x1

    move-object/from16 v0, v62

    move-object/from16 v1, p1

    move/from16 v2, v63

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1407
    move-object/from16 v0, v62

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1403
    :cond_58
    add-int/lit8 v27, v27, 0x1

    goto :goto_2f

    .line 1417
    .end local v7    # "NB":I
    .end local v12    # "NU":I
    .end local v35    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .end local v62    # "user":Lcom/android/settings_ex/applications/RunningState$MergedItem;
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v64, v0

    monitor-enter v64

    .line 1418
    :try_start_7
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1419
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState;->mNumForegroundProcesses:I

    .line 1420
    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/applications/RunningState;->mNumServiceProcesses:I

    .line 1421
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1422
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/applications/RunningState;->mForegroundProcessMemory:J

    .line 1423
    move-wide/from16 v0, v52

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/applications/RunningState;->mServiceProcessMemory:J

    .line 1424
    if-eqz v31, :cond_5a

    .line 1425
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1426
    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1427
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/RunningState;->mWatchingBackgroundItems:Z

    move/from16 v63, v0

    if-eqz v63, :cond_5a

    .line 1428
    const/16 v18, 0x1

    .line 1431
    :cond_5a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/applications/RunningState;->mHaveData:Z

    move/from16 v63, v0

    if-nez v63, :cond_5b

    .line 1432
    const/16 v63, 0x1

    move/from16 v0, v63

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/applications/RunningState;->mHaveData:Z

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    move-object/from16 v63, v0

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5b
    monitor-exit v64

    .line 1437
    return v18

    .line 1417
    :catchall_1
    move-exception v63

    monitor-exit v64

    throw v63

    .line 1365
    .restart local v16    # "bgIndex":I
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .local v35, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v38    # "numProc":I
    .restart local v44    # "pids":[I
    .restart local v50    # "pss":[J
    :catch_1
    move-exception v22

    .local v22, "e":Landroid/os/RemoteException;
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    goto/16 :goto_29

    .end local v22    # "e":Landroid/os/RemoteException;
    .end local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v18    # "changed":Z
    .restart local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v47    # "proc":Lcom/android/settings_ex/applications/RunningState$ProcessItem;
    :cond_5c
    move-object/from16 v31, v32

    .end local v32    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
    .restart local v31    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings_ex/applications/RunningState$MergedItem;>;"
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
    .line 1453
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1454
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1453
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
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
    .line 1447
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1448
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1447
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method hasData()Z
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 821
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method pause()V
    .locals 3

    .prologue
    .line 838
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 839
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings_ex/applications/RunningState;->mResumed:Z

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mRefreshUiListener:Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;

    .line 841
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 837
    return-void

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method resume(Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;)V
    .locals 5
    .param p1, "listener"    # Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;

    .prologue
    .line 794
    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 795
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/settings_ex/applications/RunningState;->mResumed:Z

    .line 796
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningState;->mRefreshUiListener:Lcom/android/settings_ex/applications/RunningState$OnRefreshUiListener;

    .line 797
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings_ex/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {v2}, Lcom/android/settings_ex/applications/RunningState$UserManagerBroadcastReceiver;->checkUsersChangedLocked()Z

    move-result v1

    .line 799
    .local v1, "usersChanged":Z
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settings_exlib/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settings_ex/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings_exlib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 800
    .local v0, "configChanged":Z
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 801
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/applications/RunningState;->mHaveData:Z

    .line 802
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 803
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 804
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 806
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 807
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 809
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 793
    return-void

    .line 794
    .end local v0    # "configChanged":Z
    .end local v1    # "usersChanged":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .param p1, "watching"    # Z

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1442
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings_ex/applications/RunningState;->mWatchingBackgroundItems:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1440
    return-void

    .line 1441
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method updateNow()V
    .locals 3

    .prologue
    .line 814
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 815
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 816
    iget-object v0, p0, Lcom/android/settings_ex/applications/RunningState;->mBackgroundHandler:Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 813
    return-void

    .line 814
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method waitForData()V
    .locals 6

    .prologue
    .line 827
    iget-object v2, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 828
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings_ex/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 830
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ex/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 831
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v2

    .line 826
    return-void

    .line 827
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
